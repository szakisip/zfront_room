class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'すべらない話' },
    { id: 3, name: 'ゾッとする話' },
    { id: 4, name: '酒のツマミになる話' }
  ]
  end