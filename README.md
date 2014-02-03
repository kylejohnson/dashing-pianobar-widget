## Preview

![Pianobar Widget Preview](http://i.imgur.com/b6kdl8m.png)

## Description
Displays the currently playing song from pianobar, a CLI client for pandora.com


## Dependencies
Your system ```ruby``` must have the following gems installed: ```net/http```, ```json``` and ```uri```.

## Usage
1. ```dashing install 8789893```
2. Copy ```pianobar.rb``` somewhere on your system e.g. ```~/.config/pianobar/pianobar.rb```
3. Make ```pianobar.rb``` executable e.g. ```chmod +x ~/.config/pianobar/pianobar.rb```
4. Ensure that the following line is present in your pianobar config file (typically ```~/.config/pianobar/config```):  ```event_command = ~/.config/pianobar/pianobar.rb```
5. To include the widget in a dashboard, add the following snippet to the dashboard layout file:
```
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
  <div data-id="pianobar" data-view="Pianobar"></div>
</li>
```

## Support
This widget can be found as either [a gist](https://gist.github.com/kylejohnson/8789893) or [a github repo](https://github.com/kylejohnson/dashing-pianobar-widget).

If things aren't working, please open a [github issue](https://github.com/kylejohnson/dashing-pianobar-widget/issues)
