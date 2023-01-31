
package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.ui.FlxButton;

class GalleryState exists MainMenuState

{
    var bg:FlxSprite;
    var arrow:FlxSprite;
    var description:FlxText;
    var Exit:FlxButton;
    {
        bg = new FlxSprite().loadGraphic(Paths.image('menuGallery'));
		bg.antialiasing = ClientPrefs.globalAntialiasing;
		add(bg);
		bg.screenCenter();

        FlxG.sound.playMusic(Paths.music('fresh'), 0);
        FlxG.sound.music.fadeIn(4, 0, 0.7);

        Exit.setGraphicSize(50, 50);
		Exit.updateHitbox();
		add(Exit);

        FlxG.mouse.visible = true;

        super.create();
    }

	private function Exit()
        {
            FlxG.camera.fade(FlxColor.BLACK, 0.33, false, () ->
            {
                FlxG.switchState(new MainMenuState());
            });
        }
}