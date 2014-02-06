ThinkingSphinx::Index.define :post, with: :active_record do
  indexes title, sortable: true
  indexes description

  has id, created_at, updated_at
end