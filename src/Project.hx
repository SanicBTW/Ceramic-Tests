package;

import ceramic.Color;
import ceramic.Entity;
import ceramic.InitSettings;

class Project extends Entity
{
	function new(settings:InitSettings)
	{
		super();

		settings.antialiasing = 4;
		settings.background = Color.BLACK;
		settings.targetWidth = 1270;
		settings.targetHeight = 720;
		settings.scaling = FIT;
		settings.resizable = true;

		app.onceReady(this, ready);
	}

	function ready()
	{
		// Set MainScene as the current scene (see MainScene.hx)
		app.scenes.main = new MainScene();
	}
}
