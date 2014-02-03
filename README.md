## Preview

![Pianobar Widget Preview](http://i.imgur.com/b6kdl8m.png)

## Description
Displays the currently playing song from pianobar, a CLI client for pandora.com


## Dependencies
Your system ```ruby``` must have the following gems installed:
1. `net/http`
2. ```json```
3. ```uri```

## Usage
1. ```dashing install 8789893```
2. Copy ```pianobar.rb``` somewhere on your system e.g. ```~/.config/pianobar/pianobar.rb```
3. Ensure that the following line is present in your pianobar config file (typically ```~/.config/pianobar/config```):  ```event_command = ~/.config/pianobar/pianobar.rb```
4. To include the widget in a dashboard, add the following snippet to the dashboard layout file:
```
<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
  <div data-id="pianobar" data-view="Text"></div>
</li>
```