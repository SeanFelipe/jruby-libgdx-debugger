# main LibGDX jars
jardir = '../libs'
gdx_jars = [
    'gdx.jar',
    'gdx-natives.jar',
    'gdx-freetype.jar',
    'gdx-freetype-natives.jar',
  ]

gdx_jars.each {|j| require "#{jardir}/#{j}"}

imports = [
  'ApplicationAdapter',
  'graphics.GL20',
]

imports.each do |i|
  java_import "com.badlogic.gdx.#{i}"
end



# desktop
desktop_jardir = '../libs/desktop'
desktop_jars = [
  'gdx-backend-lwjgl.jar',
  'gdx-backend-lwjgl-natives.jar',
]

desktop_jars.each {|j| require "#{desktop_jardir}/#{j}"}

desktop_imports = [
  'backends.lwjgl.LwjglApplication',
  'backends.lwjgl.LwjglApplicationConfiguration',
]
desktop_imports.each do |i|
  java_import "com.badlogic.gdx.#{i}"
end
