
module Repositories
  class RecordNotFoundError < StandardError; end

  class BaseRepository
    def all
      entity_dataset
    end

    def first
      entity_dataset.first
    end

    def last
      entity_dataset.last
    end

    def find(id)
      entity_dataset.find(id)
    rescue ActiveRecord::RecordNotFound => e
      raise RecordNotFoundError, e
    end

    def create(attributes)
      entity.create(**attributues)
    end

    def update(id:, attributes:)
      find(id).update(**attributes)
    end

    def destroy(id)
      find(id).destroy
    end

    private

    def entity
      raise NotImplementedError
    end

    def entity_dataset
      entity.all
    end
  end
end