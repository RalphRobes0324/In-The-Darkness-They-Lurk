hp -= 5
var knockbackSpeed = 3; //speed of the knocback
var knockbackDirection = point_direction(obj_e1.x,obj_e1.y,obj_player.x, obj_player.y);//Direction of knock will be
var knockBackX = lengthdir_x(knockbackSpeed, knockbackDirection);//distance on x
var knockBackY = lengthdir_y(knockbackSpeed, knockbackDirection);//distance on y
x += knockBackX * 5;//add to enemy x coords
y += knockBackY * 5;//add to enemy y coords


