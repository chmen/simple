Collect::Engine.routes.draw do
  post 'data', to: 'data#call'
end
