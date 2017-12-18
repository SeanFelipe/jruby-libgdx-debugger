require_relative 'imports'
require 'pry-debugger-jruby'


class MainGame < ApplicationAdapter

  def create
    #binding.pry
    breakpoint
    Gdx::graphics::setContinuousRendering(false)
    $ww, $hh = Gdx::graphics::getWidth, Gdx::graphics::getHeight
  end

  def render
    Gdx::gl::gl_clear_color(0, 0, 0, 1)
    #Gdx::gl::gl_clear_color(0.5, 0.5, 0.5, 1)
    Gdx::gl::gl_clear(GL20::GL_COLOR_BUFFER_BIT | GL20::GL_DEPTH_BUFFER_BIT)
  end
end
