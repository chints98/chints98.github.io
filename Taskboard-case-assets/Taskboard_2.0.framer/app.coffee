# Import file "Taskboard_visual_overhaul"
$ = Framer.Importer.load("imported/Taskboard_visual_overhaul@2x", scale: 1)


flow = new FlowComponent

flow.showNext($.Login_Screen)
$.Login_button.onTap -> 
	flow.showNext($.Home_Final)

#Drag animation for video production
flow.showNext($.Work)
$.Todo_big3.draggable.enabled = true
$.Todo_big3.draggable.vertical = false
$.Todo_big3.draggable.horizontal = true
$.Todo_big3.draggable.momentum = false

$.Todo_big3.onTap ->
	$.Todo_big3.animate
		scale: 1.05
		options:
			curve: Bezier.ease
			delay: 0
			time: 0.25

$.Todo_big3.onDragStart ->
	$.Todo_big3.animate
		scale: 1.05
		options:
			curve: Bezier.ease
			delay: 0
			time: 0.25

$.Todo_big3.onDragEnd ->
	$.Todo_big3.animate
		scale: 1
		options:
			curve: Bezier.ease
			delay: 0
			time: 0.25


$.Todo_big3.draggable.constraints =
	x: 140
	y: 10
	width: 230
	height: 20