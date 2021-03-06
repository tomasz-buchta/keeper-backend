KeeperSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)
end

GraphQL::Errors.configure(KeeperSchema) do
  rescue_from ActiveRecord::RecordNotFound do |exception|
    GraphQL::ExecutionError.new(exception.message)
  end

  rescue_from ActiveRecord::RecordInvalid do |exception|
    GraphQL::ExecutionError.new(exception.record.errors.full_messages.join("\n"))
  end
end
