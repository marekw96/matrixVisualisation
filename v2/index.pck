GDPC                �                                                                      .   \   res://.godot/exported/133200997/export-6464fe39e9c9fb03226b8569f0951e4c-VisualiseScene.scn  ��     <      c�0�"��r����_1��    `   res://.godot/exported/133200997/export-a68696f46601f32096e0cee462f15c82-SceneWithCommands.scn   �     �!      ��N����[� _���    X   res://.godot/exported/133200997/export-e91e78ec645d865dc158d8b3ed912926-cube_node.scn   PN     )      �fи��a���IkH�sk    ,   res://.godot/global_script_class_cache.cfg        l      �V7r���Jt�͟��s�    \   res://.godot/imported/MatrixVisualisation.144x144.png-4fc2158c6c17fbcce462cf6041cf6a91.ctex P      @      @�[Fm諆��ݲ    \   res://.godot/imported/MatrixVisualisation.180x180.png-93558815c6303a2711739074a5f8f08e.ctex p6      d      \+�:���K1��3�    \   res://.godot/imported/MatrixVisualisation.512x512.png-b94c5eddbbb07f7622405dd746d6bb8e.ctex �U      �v      ��_|	�*+v�@�    d   res://.godot/imported/MatrixVisualisation.apple-touch-icon.png-4bc7f3c8658efb908b05023d13b06e27.ctexp�      d      \+�:���K1��3�    d   res://.godot/imported/MatrixVisualisation.apple-touch-icon.png-5843fb6752ab519fa374496846a179bd.ctex ^     d      \+�:���K1��3�    X   res://.godot/imported/MatrixVisualisation.icon.png-55d51191e12d68b5b1d573365b4645c1.ctex��      �      �̛�*$q�*�́     X   res://.godot/imported/MatrixVisualisation.icon.png-b4f79215d513313603ed699105a7955a.ctexp}     �      �̛�*$q�*�́     T   res://.godot/imported/MatrixVisualisation.png-4c0fcdb938810c6d92c7164631a1c21c.ctex 0�     -      �%�$����<�׿�+    T   res://.godot/imported/MatrixVisualisation.png-8f582a2572b2b06e36f18dcce49b4a55.ctex  �      -      �%�$����<�׿�+    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�P     �      �̛�*$q�*�́     D   res://.godot/imported/icon.svg-83ecc9db82374ad3cc62b5e5b5f39882.ctex`      �      �̛�*$q�*�́        res://.godot/uid_cache.bin  P	     j      �������ڨ�0oq�,       res://AnimateCube.gd*     ;      
;C�B���oZ�%�y        res://ChangeIterationOrder.gd   �;     �       !�EV�[֣FpJ��    $   res://CommandParserAndExecutor.gd   �<     !      \+S$�pņ"�6���n�       res://CubeCreator.gd K     M      -��!�+_��ߚ6�t�    8   res://MatrixVisualisation.apple-touch-icon.png.import   �|     �       ɚ�>�|��_s����8    ,   res://MatrixVisualisation.icon.png.import   P�     �       ;�N;��A��*���.�    $   res://MatrixVisualisation.png.importP�     �       ���2�3����ĩ�.    $   res://SceneWithCommands.tscn.remap  @     n       �&ȭ�X9�	��e�       res://Style.gd  ��     �      :��jW2��$�3��       res://StyleManager.gd   ��     �       h����BE.��^�x�       res://TilingCube.gd 0�           ����M��z♂��x       res://UIControl.gd   �     �      �]�R��� N�ϕ       res://UpdateMatrixButton.gd @�     J      �Mv)�4/��A        res://VisualiseScene.tscn.remap �     k       �ȹ�Y�'|t�f�g       res://camera.gd P.           �	��I�tɬ�"Y��k       res://cube_node.tscn.remap  �     f       �n�n��E����Q>�       res://icon.svg  �     �      C��=U���^Qu��U3       res://icon.svg.import   `]     �       ���"BR���&��м�       res://project.binary�     �      v��>�Y�/h���       res://v1/CubeCreator.gd �      �      &�M�S��mcx(^�o�        res://v1/UpdateMatrixButton.gd         J      �Mv)�4/��A       res://v1/camera.gd                �	��I�tɬ�"Y��k       res://v1/icon.svg.import@      �       nT�.�0q���Xն    4   res://v1_web/MatrixVisualisation.144x144.png.import �5      �       _���gx9��hk%A1��    4   res://v1_web/MatrixVisualisation.180x180.png.import �T      �       ��1���
���L��:&    4   res://v1_web/MatrixVisualisation.512x512.png.import ��      �       6� �#��?+V＾�    <   res://v1_web/MatrixVisualisation.apple-touch-icon.png.import��      �       ^�[�%�0�;��2�%�    0   res://v1_web/MatrixVisualisation.icon.png.import��      �       �u��w{�lg��Y[�    0   res://v1_web/MatrixVisualisation.manifest.json  ��      �      ��<���A��!���    ,   res://v1_web/MatrixVisualisation.png.import @)     �       $�7��(�EhRx���J    class_name FreeLookCamera extends Camera3D

# Modifier keys' speed multiplier
const SHIFT_MULTIPLIER = 2.5
const ALT_MULTIPLIER = 1.0 / SHIFT_MULTIPLIER


@export_range(0.0, 1.0) var sensitivity: float = 0.25

# Mouse state
var _mouse_position = Vector2(0.0, 0.0)
var _total_pitch = 0.0

# Movement state
var _direction = Vector3(0.0, 0.0, 0.0)
var _velocity = Vector3(0.0, 0.0, 0.0)
var _acceleration = 30
var _deceleration = -10
var _vel_multiplier = 4

# Keyboard state
var _w = false
var _s = false
var _a = false
var _d = false
var _q = false
var _e = false
var _shift = false
var _alt = false

func _input(event):
	# Receives mouse motion
	if event is InputEventMouseMotion:
		_mouse_position = event.relative
	
	# Receives mouse button input
	if event is InputEventMouseButton:
		match event.button_index:
			MOUSE_BUTTON_RIGHT: # Only allows rotation if right click down
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED if event.pressed else Input.MOUSE_MODE_VISIBLE)
			MOUSE_BUTTON_WHEEL_UP: # Increases max velocity
				_vel_multiplier = clamp(_vel_multiplier * 1.1, 0.2, 20)
			MOUSE_BUTTON_WHEEL_DOWN: # Decereases max velocity
				_vel_multiplier = clamp(_vel_multiplier / 1.1, 0.2, 20)

	# Receives key input
	if event is InputEventKey:
		match event.keycode:
			KEY_W:
				_w = event.pressed
			KEY_S:
				_s = event.pressed
			KEY_A:
				_a = event.pressed
			KEY_D:
				_d = event.pressed
			KEY_Q:
				_q = event.pressed
			KEY_E:
				_e = event.pressed
			KEY_SHIFT:
				_shift = event.pressed
			KEY_ALT:
				_alt = event.pressed

# Updates mouselook and movement every frame
func _process(delta):
	_update_mouselook()
	_update_movement(delta)

# Updates camera movement
func _update_movement(delta):
	# Computes desired direction from key states
	_direction = Vector3(
		(_d as float) - (_a as float), 
		(_e as float) - (_q as float),
		(_s as float) - (_w as float)
	)
	
	# Computes the change in velocity due to desired direction and "drag"
	# The "drag" is a constant acceleration on the camera to bring it's velocity to 0
	var offset = _direction.normalized() * _acceleration * _vel_multiplier * delta \
		+ _velocity.normalized() * _deceleration * _vel_multiplier * delta
	
	# Compute modifiers' speed multiplier
	var speed_multi = 1
	if _shift: speed_multi *= SHIFT_MULTIPLIER
	if _alt: speed_multi *= ALT_MULTIPLIER
	
	# Checks if we should bother translating the camera
	if _direction == Vector3.ZERO and offset.length_squared() > _velocity.length_squared():
		# Sets the velocity to 0 to prevent jittering due to imperfect deceleration
		_velocity = Vector3.ZERO
	else:
		# Clamps speed to stay within maximum value (_vel_multiplier)
		_velocity.x = clamp(_velocity.x + offset.x, -_vel_multiplier, _vel_multiplier)
		_velocity.y = clamp(_velocity.y + offset.y, -_vel_multiplier, _vel_multiplier)
		_velocity.z = clamp(_velocity.z + offset.z, -_vel_multiplier, _vel_multiplier)
	
		translate(_velocity * delta * speed_multi)

# Updates mouse look 
func _update_mouselook():
	# Only rotates mouse if the mouse is captured
	if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		_mouse_position *= sensitivity
		var yaw = _mouse_position.x
		var pitch = _mouse_position.y
		_mouse_position = Vector2(0, 0)
		
		# Prevents looking up/down too far
		pitch = clamp(pitch, -90 - _total_pitch, 90 - _total_pitch)
		_total_pitch += pitch
	
		rotate_y(deg_to_rad(-yaw))
		rotate_object_local(Vector3(1,0,0), deg_to_rad(-pitch))
�extends Node

@export var width : int
@export var height : int
@export var depth : int

@export var space : float = 0.1

func _ready():
	generate()
	
	print("done")


func clear():
	for child in get_children():
		remove_child(child)

func generate():
	for z in range(depth):
		for y in range(height):
			for x in range(width):
				var blockInstance = CSGBox3D.new()
				blockInstance.position = Vector3(x * (1 + space),y * (1+space),z * (1+space))
				add_child(blockInstance)
0O�GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ �����D���V[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://p70hfuponskv"
path="res://.godot/imported/icon.svg-83ecc9db82374ad3cc62b5e5b5f39882.ctex"
metadata={
"vram_texture": false
}
 extends Button

@export var widthInput : LineEdit
@export var heightInput : LineEdit
@export var depthInput : LineEdit

@export var cube : Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pressed.connect(_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _button_pressed():
	print("Generate button pressed")
	cube.width = widthInput.text
	cube.height = heightInput.text
	cube.depth = depthInput.text
	
	cube.clear()
	cube.generate()
	
	print("Generate button pressed")
b f�GST2   �   �      ����               � �          RIFF   WEBPVP8L�  /��#͈IS�������C�F ��O;� 
�6r����ڶM l���3��""D�A(F����H��� �f��~�儆��mo��Ə�UL/k[5��1��Y�$+����ޤ5m�m���@�"~���Ǖ�a۶�D��_��!�m$I���s���uɝ���g�݉���]��\n�Tw�;t�@E�_ ���n��p3�>Nw�&;��mS�Fz�J%�0���iC�ff��rָ������<f2�}��ϑlI�f��m�Vm��s�s��3�KaNj)�H�I�Pe�-�u߅��oI�,I�lI������z嘀��' |� t;�������0�,�hG �D�oX�2�\��g��/ `s/ ����,  �R ��7/�n��dɢ�BVъ͈1���ο�}9� ��  ��������N��b9��V�b+z� �E�z4�=�Od��u�˭9��e#/ P��hVe{k֌ �r��+�?ݚ���3��� 
���9t�{e�# ��" 2$���" Dț#;]'���HAa �V���{����{��8� FT�ETQ���AHd�#��m�m�-�U� !v��>q|goaR �=�{Tǰl�Oϴ�Й��(@)z��%�0 � �R.:���5�h[K)  �3=Ǐ����>��+��a�{��|�� P�Q��%�s��hۨ[�  �s;��VW P���o�A �z�mQ�l����ۢ ���c�5��X,pʌ��T/�-*�zT��( BUh�L6ot;��)|�UF�bԊ

� t�.q���.�� V֣[A�VoK�{��Uw �f����;��n�>@@T}K�� ��� �ss�����'KFg���:" �0����-��Q���\ �%uJB@)��VW�@��ED�h ��E!@aC��a  D�  �B P� @H�	 ����E�H�x&r�0q�\���rV�ؼ4�Ku"��s�Wla�k�/P!6����rQV��p�(7���F,�y�8�A �at���1"H
�N ����̺Y�	pص���V9XϞ���8l����M��Haձ(3��)� &����f��a����dX�n��x�bŝoͅ�JY��2�'F!�3V��b����w�&�6���J�a��2���HD  X�	��m�@t45��u����Y@L���x�3� (��mg"E�,�.6NM2V�1��Nu�j5T,:�1����ޒ@\E-V��Q�P[��c��r,�i�+�$��9�e�6��&(`��
���u24Gp��LVY'*���M���h��6Y'��5BfYgr6%� L.�H�[�IX�7g�2��r��(os1�j�$ͦ9�j�E��S���Yf���Ct��Uc�E�: �.��z[���*����[VAP* �e[ng{c��'�.�0��g�-k
�J>+�ޢ��h�<3���;ۖ��$B\�g7@!k���6�W� ���Z�@jkz�;M!� �V�U�ح�b<��-��8�����#  �tF�ݭ6CV�J;��R�s�w����N�n�+ �sm�8��i*;?0�rmc蔛�ٙ�t�v �TK�°������c��e�o�b�0h��cy�q�Q�� *�"�T��3�j�q����t#JV�[�UDL&�"'@ i'��O,H��$UzKV�D��hV 2d!� "���f� �to���|��6Qr��WB���ze�HG�t��ܒRvs��9���JJ�oV'���j/)��:E���d�xX�"�0u���Uw?�.)���Ҁ����J ���tJ�'c���)%��S5+��ΦF�M@�m4c;d� vJ+��d�]��6�v8H� mG3e[�ک�Hz���(��dȡ�g|v,A��֐c��jt�t�/�x����N����*O<��Y6xp������o�����ͽ|3/|�k^��=���9���V�xtr
k����N���gZ�>>łTh�S����ۻ����AK R�]lg\	
��F�N��l'q��|f��;��*�.����³��m���6�K����,7M��� ^2�(7�YS>��t�Q��$0�U3<����?m��:&�yް 0�o6Z�Z\�v.[�����LS�`8�.��'N�-�*��n��ٽ?=:��{ON7 gw��u�Z��U���GV>����k�KS�e�ܕ�=a�<`	���+��C�+<��4���M��\zG{W$����V�b�n��Ҿ�?/�_^��{�jb^����.�������a�z[�-�=�����M��Bn��_�  ܁1�[�=D󓦯t�#��D��ln*k�^�I���Қhn������۹NM x�j�}�W��=����m���I�X���2$�n����aG���j���>�{�M���߹s�Ѥ�z�/���W��$N-7��[O��7�}�pX���⻟�w�z����6K��2d�j�
10�?L��'l�W;�|���M��y���k?~7��J�A�}��Q��0�7o���W�i��k��R�p� hpM��hr��i`���  Tr9�d,��ޙ��x���6n=��kE@��s4 豝Q[��S�Tb������6Z۾AM@��u���G�ȅq (�Eէ��I)�Aՙ���b�� `���d�����J����ĊF���"ZuW�8 T�,i|"8e!TYnQUf�Kw����.�ң'n����lDX����)L�^�tv5���_U�q[�����j/�x|���#�YuS��^��}��+���xOuw@X�ZuYb��wj<>#����o��e��z�mV����Ù�8��.�ݸ���|�hm\e�U���~�fu?YܶygÃ��������\�š���������������]u��}����W��S6����E�����7�v3�4J�q��*N.��g�tj�L��A��~�Z9�S<����jr���}?�8î��������O��_��-���c������1g��u��r�dh_�?�w�%N��Y�!ӄ9��`�np����������(@��~��j��KOt	W��ƚ3�T���R�2��h�����,^��G�r��|,�����QW���$� �E�C�� u��w�6�pQN$l6�Ƶ؊A�)k�������������+l�f��\��D�Bo�t z3%`�NՌhh2�W��*�:�r9�����.�lً&N��ۜ7�M�m��S��۫��?Lw�k�{U7�`R�����E%��f�j�.�X��Ky�nX� -�8�����?�f�BC6��A� �CJ�0o���qrI�SKr�:L��0�!$��3g>^��ΙΙ+�>f�#��{��+�0X�f;Ӊ��Xp��c���~��ήԔR��{^}�~~��yɃB�IH$H����AR� Ui|`��tzd�t�̠;�����;�}�t� i����r4ǌK41h"����?�K�M¶��|.��� @`Ƈ'g����1��֝�ԕ�C��6H�cV1hZo�r~QMR&�����Z����N���I\=�8S�8s��3�9�y3o�V�/��׷��=�y�5�b���ouk��� Vw,��=Y�LV2�J���:e�N�dN5֧S�l��� ��*w���)w�ϝ�9�V;�S7 ^=bq
k�O��
���Bڷ8n���f4꤉:��DN�0�t�& @o����o��Ç�Ͼ��o��?)ߪ== �fR$
�/P﹀�ȹg���q��v�5���<@
w���W�x�� ��N]�\f yx/��"��S�@�M�I<�:�� 	R�5$�Hd�����Nܨ�)�Ϛ p��	�ӽh���H�x�$�X`�kBm�#�Cj? �y�F�"���  �B�,�z  �s��r�H��� P��CрHa����t�x ��t�����Т��
W�Zo:����0�ĂP��s *���t���:�'1D��4�Į��p�H �V^����ԁ�������؟8��'���
�^�����ɞU4��W��TRU}s��Ņ'�sqqᛜ͹ۜ� ���E�i�ɥ�ƽDJ=�^N�KlF' ��^ҧ�>ѧ�>�K��>�'l]����O�b�\����M�%,�`�%�X���� �J��JZiX�;�	M��z���� �	�i������T6��@l��w�w�E�ɤ��ICʸoL��P�����'�_��o��GW�fl[�36c��96���yt�T$����'����@3�1��I˘�i:�Sz�,�>�����-�����sihsq5�&�P�{ߕ_��n�㛹��7���|�o�7?��/tF'��'��?�*#��=L��V �lO�'M�2d�i2���8|j�p��Ȍ@T�dڬ�� )\Ӌ��v,|\��@t:�������?u�5���J�$��3=p��^�vfr ���{j7���E�8p���΁c����Z(�֫�z��'��a�]�	��	�_\��%rd��6y�l�� .�Z����Q��@�wå������������0@��b3ʹE��1G"#,����@ai�)�Ӓ�Ul42�&��5�V]�@���Z���U��bAH�M�Q�W����i@6�����B���ܜI)2�!S/��v� dg����L�AD�DH�Mh6L.����5C�@�����O�u�ٞ#�FQ�~�n4C�$�@��Ќ��rxԭN�r�!Qj���ur�h�	��@ۤ@�ʹp|�G�)�|�f�ѕ����op�����9�n�D @��&W������.��v$r{rK��8��8;��7���8+<�Ėܞ- �M
 ���7�q�8��4:���HG�G]�f>[3S���lf泙�$�'7�Mr{r�Z'��mf��&��R��]Ё.HGGt]�:3��g�̜��L�9�'����InR����H� 0l����� �h �:~`5�$�j5 P�
�����m�U+HH �,c	���b�m��,s�. �ŒkU�E�!���5G- ���� ��p��gn��FtW�m�UX�������2���ۗs��HC�-�mAd/s?K >��y����{o���օJbDP�Q��(����k�+���y�{��BN�5�<(Ջo�

d��gL�v�ȯ�EX|���[g�� Q=ߣ���gL�v��f����3 @8��N�I��R���VAd+{���U� ���A�+x 0(��o��>�" �EwշDF�RX��~�j `��{��ܠj�`P6�H��{��8� FTU\��DFF��e��k�X�R @���t(�X�A��{ (L�H�ʹ�q�" (�
��0 !�v�	 HPãw�}�P�����ͽ  ��>�x�9�
� �|�?V�,���7sX��,���k�y3��]�f+zА)��ǡyr �j�1�W���x���y���ћ��D�hA"��C�$XG��?�7˯g����c�f�6(�����?����
 �{TW ������L�q�0�,���	�V���p����뙏o�z �� ��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://brjb8byte7o5n"
path="res://.godot/imported/MatrixVisualisation.144x144.png-4fc2158c6c17fbcce462cf6041cf6a91.ctex"
metadata={
"vram_texture": false
}
 ~ DJ��QGST2   �   �      ����               � �        ,  RIFF$  WEBPVP8L  /��,͘i�6�f����Ū��W�l�l$A���)�@���6��p��s Fm#I
����n?B��q�8�ۆ8����E�=4a�9����B�/�@�����H�p�@���ϑ�U�f�; d�� &S8�� ��2\�.��L^��F2'v�Qwǵ&bضmf���Zܶ�$�NMO����;�Kv�mk��RHV�p���033��ޠx�2S�`<��m�HR��{��7���Om�m�~���H2�CNS�۝��dfZ��o�\�E���(�\H�$�f���&�I-a��m��6����}b33̣3�:��f�0H�%G��ɶU۶m�S�s��m'��Bi3�^s8pI�\��u��9�m��27z#r���_�	��=x-x!��^�Rw}v��R�܋Í%Ƕ���X����	�ԉƭ��p�E��$I�D���;���/��ڶ������$���b������%�to� � �� ��ع�,���%��hD"(��&���x�w�����������w{���m۽  ���͍�oN�N�9�"F�P ���¡��7��A	c���6���À��� ��6�n���Yz�cZЏ�F�c�:wO��ήҲ�"��~ĳ��}t�;`�ѯ�w��v��B4��\��<;�E eyL˫�o7�-�n'��w7��rs�jP�~0����:)ZB�@� av��;�_^�{��޵��u��#F�t���-����"� �((�h����  Ԣw��������qgU}� }�wW�w�>}?����]DTUU�:R#���*Դ1�4�JD  BD�[5O_�<�ww*ԅ�o��ѹ��F��)�Ek4UT��EP
2���n���2i������E�=۾Y�Y���|��M���r�n�I5ESTF!�  PcD��Rmc�7��@�M����o<V��n��m�۶{�߶�g�`"��֭�Ѫh��RA@��Q��d�VU��V[[���^ue�C��۽�oǿ}��+�BG�F[E�����j҈:�zl���5At��^�f��uRT��FSEP,���iK������/�-���m�d��g��I5F[E� �h��H
 !Zrg��f��&�ad��e������)Ƌ� �V�/����,#�]Sk遌�MY���h�JA�Tm�� ����q`e�� ��D��R� ��C����{��4�( Q5UP@�h��@��i�yv���_�I�eUE���H1�r�-�{��u��E�(!A4��eFЉZ ��PD]T"�ԡ��`!�H�A@�hDf0J@!M;��4��N:ʸ:} ��G�(�nD���c$ ��� ����GCu����˭i#S.bV3s�1v��
���>����$'���6����"�-R�)؏�#Q8%�Bפ��Ժ`�U�jh���t�
 �,�˺����b���ր:�&B\iѷѾ'��ih�ݕOҴ6nNi9vǹ(Ӫ̷zZj�N� o'
\���<3R� iYg�u�B%��N������ẽ�
�*a��Ekס.��?ϗ�r�`^9����um5-ƶ��������T�r�w}�������8�8����*������{���A�D�$�����l��%S�v��SP8�aWկ���O���I��H��Y���KNL�Ϧ�*%��-���ieok.\�p�O�����&-���qTtf唯�E��ObB�&$:a�c�����X"�\l�]EW\8��\�g�"LF"K \lY,.#W��s�*:���ه˅$lM	W��HW>�\��;S�� ��� og[&\�ĕb��v��Ť��4[E��$}*��)K�l�S��B'Ϊ�,����~J
Q��nL�"u�;k�&�R�RL���\;=��ڥT$��nk��!�l�B�dG��!kQ3��?�%���i�k<�wޝ݀�I2�H��rCx"�@��[�^&gv8N+b�r�6wCӒ�G����_#d��n�;�p߃������b�e-�q��.ƹ����.�n�ҥ�'�Y���Y�J�*�[��F4�j�Z��U8A��6��Q5F$u^L�9Iq ��]�vi.P�Pj5d�1d ����o��5���j���*x��~77�+�mp�N�W� I�{��^��4j��õ�z[Q��=�����}۪��ر�ۻަ ހ(��}{�<��������R*O���lc{c�noݥD�W����ٽ}M	W�c����� ~u����"�R��9!h0Z;k�v�殻ת���p۠	Q����"j��j ���C�uom+t��(�M��y*iȀP���ۃ5Xc�
"	�:K&�W�t��?�"����#U?z��MH���bk��
N��m�&�]�ԑ&m����c[�W%*Pa��]�_}������n���Xg*�柮���?��s��1-P���������ٺL����i��]|n����rRgYT�-^4�����K/�xU�ANUw����K/����9�4&U�<��;��f/+���y�O��'˧{��w�f�B�.�"����UI<�d�w����w�('�y���s��W���������X�U��/8���?7wRX���%��UA�(y���6��KU`�˼���������]���������,x�ۿ�S�ݷ�f�z���|��I��M�&�<������j4�e��\|GLE�w���dP��s�~�}�a�|⛝~y溂/�ss�P�q�KO�}|�K�)wݛt�/!�i(a�i���O׸.�H6�����>1��<�-�g�P�Pj�m����S��w$��<������׿e�,��f��M�_m��Ӻ�>�����n���������^����F��΍�׷����ZW���b�U�?�_��o��G���ܸj�y��6�׾)8�ւ��uG����6�/��Q�;���/�_��u[n�������U���"�l���/��&\C4��5���꣪
�����}�%���S�����U�^U�tS��6���_3xR�fE���y�Ԉ��r�����X�W|ޝ�y1-���]�uo���6��'7�;����W�����>�=�N�y��݄m� B$ЭݽU�L��'�L^տ q���1�t�%L�!��7��}��˶_ֽ)J�^PG�L�G���}�lg|�}�g:d
hX��<ܽ˘��Nmm>e׸�{_Ҿ���Q�/�/Vy	��]��p,@����y)�l��F�=�qE�L�/�~��T���Cb  `�_����� Եx�F���Wm�(� �I��[�\kb8�_�
�0��'��Q�%G�گ~�?�A�����w����o�~D���\�����c|��UG�9�+�{���=4 �݆���-�e�G�WQG�#��>�k��Ϻou���?i\׹��֪]�{��7M^��gM^v�u�ߨ]���k���R~����pM�_�ݟ�sȪ��y5�|��(22`9�?�c]�S��OlLp��	�V��_��h� @�΍�_�q�Z��=.8��z�֌ 0Oy�� T;����(� ��eY_f�X�q�K2kyGݛԩ+[�{�w��RW�J9b>�����	w� �_�&u��\ ֳ,�%2���Z�ԑ�7�����72���b��)%����&���@�C��qADV�T�.�\k��Be�A�p��D��  Qn�a�!,*��-&�v�;�r��w�<��c�a��wnw嚗Rn��- �ڍWs�E�I��a���no/�����l�+K���V�W��o���s�رve���Cߛ�_����g����u^=B��ױ	�����*�y�U�C�:����_�w������[����_�~�u<���Rf��O����̮=������v���29��F�9����< ��S��/�����X��ޯ�������d;T�����;�Gs�o���������K�XC���&Vr���y5�r��;s{�_�,��~���W���{���ʵ���Ǉ��o������n���ܫ�o`؟X�?�n��ֻI���Z^r�ڭ�w�z��I �\�'�f`�\��ӾwW���/�����}�랿vqs�;�:�?���?����/?���o��Ľ��t3�O����m�����v���䉋G�����k|�{��������~���%�*�Q�/���|����=��o~�o|��W7��L�������~��w��/��7�/�nFZG����?���_��}������u����{�~g�n��3�Ѽ%��9�g�׏Ϋ�dy�����q�Ooy!��S��ڭ·�|�w������(��e�}�]���Y'�s{IO���m���n�A�C�=�������t~ [s{:��P	G�ɸ�m�wV�%�� ;8�+Y�u<}�}1��.����Օ�!*�eqD�HJ�����'6>Ը�p80��Y]��ϳ<;6�8U �uX_�M�m��+
A�37��G9��ʮfj�qH�cj*��B\s^�өs^��'��a0;��p��2��'�q�j��E}m�K����S�Ӵf�r��N �l�a�
�'�]��唣����w0�ǧq~!zNVj��s�}6���2��s^�����N�V�E���Q^}�1�����<��E��_s��D��F�~��ּޮ�u3=q���8��]��#�[����$^�ڢ	�xIR'EX���۰?�"i]��q;'���q�s���!LD�DDC4���׃R,�d|�{'����eϳ��e�R�e�;W�+7��͹�-�UI�Ȓ��&�X4�%�!����G���Gr��o��WT���t��~�qa��ki�*�ŉ���I�,9��ʡ�թ���/_�|��K� �� �����(�`���֔p��b;�ϖ�-+g&g�'�u�@X��x���$R�Đ�Ȓ����o?��G�ŵ8�JQ
�"X��r�8�m Ac��)���uG5��ܡ��2�p\\ܲî������/�{~��dQP�v�P�C�A@�lmA�����v����N��q���!��hw_�����OX���2#�dg~����<N�8�����)w�@��C���J��J����_2Ob�G�����)�$�}1Eʳmv`%�d9��f��$��!iILYx����я�{~�u����Mw`�,�B�G�P��s
E{���x��1V��@N���O�sR&9d�����?;3�ҤI��&�ݥIca�Uf���$S�u��.&��#Ym��e�c��"|�nf��NN�q8������T!�L@�U��R�λ3��>T�|�3�B'*G4�vnL2�|`y8�b@s�tDae��)X� �5_�M�IM��6���J C�s�Q�2��s�)O�x�V��@�$�LR:*��^�i�������J|��*KvO
 �ȑ�ϸ=�����0�����2y:*���R�@�8�0��'+c٧@����;={z<���ً��2�.��  �,��,�B� `���(��������(�Y�d.�0-� p�YI�����c�/���'�L�LX+}y-����?�u�VS����l5h�
8b%e]6��g��F�j��}�$2��|dI[}��d$2�Y��?� �T����i�/�)�2�2s�8���Ŕ��$��s�d*)So֚[�$ ��
[���\����=|E��o�����&�4QBj��D�
�_|� ����)[��O��_�7fg����4_�/���ï��  `��b�ba�bxcV�A]L]��]���{ ?����Ѓ��� 	ABd��.#$AB2�F�գ�i�z5P���= Y§��������~�(9[�w�ޞ�/?c��z c��^R��O�ų�=��5Y�]��)�y��ɢ.�|�/�?����8�M�8�$�5:3q3:� 5 ���N~�1�Q���n��#K��3�ČV�FΊ1#1�߇���7�g�𮖅`�E	(>�u�g~��H�+�͂��Wϻ�����=J_O_ϻ�]��ߏ
x�V_��a��;7ۋ�}�<ʿx�4?���Z�[�]�n���u�nc����u�-�l�B]k�7�ߨ� YD	�]�@	�t�p_K�L4�A��h���z;M��j����bꂺ����?�;���m<y��s?�{��a{�9bFΊF�jb�,����I4�R1d�����Ҕ�@��[]7�O���b���ҏ�9�G6l�ׯ�Λ��6~�g��_Ɵ�yaj�@Ge4bgm������[$g�� H&ģ	(G��lO��D(duv�@YRg�D͝G%X2~�Ҁ&�w-yV蜼e;P����jS~�dl�խg[��r�Zּ�eK��j�.����k1&iY@	Ӷ�\�R�D_����Yf�$��~��؆�iP	�u�uZ(g E�ڴi[�<��-�vf���#�(o���n�h�$��4BD*�e�6��s6�ԁ���n�`J�4<,q\�k߻�5P�<�
�ע��%(�g�2o}m�բ,��H��h���HK�����n"�A��V����ղ�".W�BԬC�5���0*�H���LD"C"�b!�=_&�����@�2!E`5�[M�47Z�&VX���h-{�a�����)!K�GKˏ�CI�v
���d��a0a	+\��JEi�ЖOd��
����'�4�gj�@G "� �;l�8��Ld����R�B���TX+`tIr9A� D&J�%:i��ɞ��˕�3��g�<&��P� ��- LA�(�*p���ŕ�D&2�� c��T�g�@iE��#4 �)���4SeG21���&4��H�H4� c�B�v���6*#F�N0�OLa�.F��*�"B1�[h�=1EӸՒ"��$R�(�?�yg�s�� D%no�T	73x0hH2�e��e���<������( �4'�#�Og�P{���vv�0}�Ť1j�ە@�S�( �r�Vo��
�ز�B^!�qc����6�Z5 ���"��l`y����t� ������h��U�*���������7�-�wN�ۭVŤQUQ�X��� rIr�9�*  ��v���j�5D Ŵ��R�:+<h�"?� Dۢ�--@4f�CDw��;��Vc��T�VQ�F�5������3�M�μr ��~���~k�<� b H��Q�$B�gg"�+s�U����յ|ߦ��A�3�r��s�}���"��IW_P��T)�pB��R	@J*�S����]�:bKW��� L�1إq�����l����c=DtDU�fQ��Ҏ J��*S:�T8!;�Gl���*��:�����������jk�����"�� �(���J��@�چ ������������G�5��pY�����k���]O��B��-��E�l��Z�o�W�x���������� _xՕ��kr�R̝�,# A��#��hK��ni��l�ktx�ч���k��!�-���fd�k*��~�̡"����ͱ���������`.���-}�����ɮ�'s�Ф�Mg�!�:d�� R�� la.��t�}�V��6m@e�u��߃�gڏ>l��k�����-�qh�n��w/fFЉF4�Q)��am�G�y:խ��+ `�e� �5��   �5[�"��(�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://ysrycxiojs6r"
path="res://.godot/imported/MatrixVisualisation.180x180.png-93558815c6303a2711739074a5f8f08e.ctex"
metadata={
"vram_texture": false
}
 K(�C�,eGST2            ����                        �v  RIFF�v  WEBPVP8L~v  /���0l�6..�O����F���\>�~p,@��	��sN�Yx5������Ӻ��&@c��ˤ��+$��P~�`PV��m$I�T�=��o��P�4ڒ��6�<{?��GW�#IR$�2�	��K���?0N�D(ikE��#�������%������d��A  `R���^����A �QX�fo�=РA��@�d�BKF�h8�k�]w�h(�$�]$��&M�� �e!�T�k A_@� h�6_�����p��ֻSB�3�3�o��A��~c�YMG1����d$��D�X�Vչ�J���m#=���nju���b�0���U-������ ��6/��@�����9l�6�h�����ve�V�*; "�`-=����˻�|�fe�Iv��*�hY�>f\�d��K�گ�W0[�u#s2W�� �eV�U�*�!B�IW��F��͸�1l�6���b�m$	�$Ѳj𯿴�?S�l�v�H�����TE�������ecU�
'�w$I
"U3���^�,s/�-I�%I�m�F��O(LD�ͣ��g]�m���?y5öm�P��'��$�mfqG�b�A"��e۶ݶ��\Jm�����j-!�b�0�n{c#I�$6����]��o'İm9���O܏$IRR3���"���Z�m�m�u.�����@>ʅ� ���6�$IT����S1l�@���'n��( (X)������`� ����G ������ͨ�;o�q>�~q���>���pGEE�^�Q��� A�8K?�� |Q��>���_��8��`��c  x�/��z�˷�0)�=�}����^��I���M����L�E�K��;�h��=BKDBD:�_�|�垰Nx4��X�����5�/��A8y�I?""��&�I<�zַ�=��>����-�}���K}n�/  p�Zā�%�`Ǿ۳�����b��n��6�䢫�I�&&�i�>�醈�����tz9��l(���õ�5�˱��8q����e��ǃ~���� \�Ӹ�=}�����<P~���*������mB��4뒆����1���X v*H��$d$$S�͔��w�0�﬑f�a���_u����?�7�y  \;>��Ni\��7[�˝��|�=���[u��Y�vc��ؤK���,:���Q�)�M6S�6*����5ӵ#�3�\����{4L��q����� Щh\	�
g�K7��$(eB��G[Xg6�f[����9�3��z?a�0��2A��ؐ��o�9}��Evd�k'ۘ�� �wO �:Ս�`���Ts_O�l�ѹ���S�����N l�M�}$�NF�p8]�=����)�N����|��~��S��i ��HRAAwj���O�qk�ܙ6���l]\8p�c.%����b3u��+z����w�p�x0̍������E#.*I��i�9v+%�n�����Lk�4�8���ZR�8e�^�N8lϝ'�<�:`n�=��\����WC��D�kmc[�=��,��Y�hl6�`Ii�-K�{�H[z#p�u���n��6v�X~��Mې�=�E  @�I��.���/��E<q����""2
2vܰ������-�����e�^��a�t��a@0 H�PmP�K���$q��<������@AF�f*>�����'���;��� z1xO�T����g��0�yf��8hy�������*~3_�yV������ٵ_o����y�z|f���ؾK�{��Oă��90B��Z��F��(b � �L���Y���(��_����z]�VCܴ�r7n�ڴb�� ̻ �.��X�P���p_�؊$�#@�&� ��,1`d@��Ha�&qn�x��q >����}�v_�_�GT���`u�α�I����o�C�n�\T�P �3`(|`�$D)���ɒ ��s�p ���}h�;�{��{���&\�wV�����;qh)K��5jԨ!�Y�\�EG��3a,���!�!JaR #��`��9w����`�e��p��x��2tv��5�. ���~�a�^�mjk�e��!	�5�	C�! ��/&�B�g�tT�L���L�f%�q�{�{���W
���u�]���[o6N����$)C�80��C	C.6�;bä ؕ�1Y�$&���M����ρat �!Y���b�Uၯ8ቅ�|���u�;�8	 �َ�2�)bٓ���,.'Q.�"%cdda�l�0D���o 41D,��&� d$lg�`l[0`�6L-��K�"�N�;ih9K��5㸤��aH F �aؤd �R���,(C F(qW"��La�`*>��c�n�Ή��s����i]o���ǲ�N�X3l��E�E"%vL~���n @��Qf{? $6 ��!�#�!��;���p�{�u��ĺt��ǥ���mؐ�s��}�=�!�uKr-��"FD,at�����I����q 1��Q�J�&Gƙ ��<���ǝ�2�A��U�ʟ� `�k�uOy/4dI'� ��F��0��W�X:�! ���!6p����	@}l�sO��c?c��Da/5Ihp�@;z����f~��Ɵ��0�@,a��H$X>"�@�@q�Hd�H�s+�<�Ώ[}����;�z��E��� @Q����+�X]��O�k�[3��PA�$K���I�}����l��"�tĆ��z �=_^��+�ļt�&��y����N�+�r�T�K�@@%ѵ)cC�%'lE��x�5��`�ױKGo�;Q@���@U��������Ӗ�t�)m��W,�����_��i��Ĳu��'�c8NT�X�Id�0L����� �M&K�x>�Ƕu����{=�J�y�+L� @�N[�7N�f���'���:4� *�`&\l���`$P\l��0�H@JtL���*U����Ͻ�ƕۮ�����P5�y��9�׼,~���8z��z��
慙��r�b ��  ��&˱�6����ſ^տV���ݮ\WnC/|��;����u�+�V�Y�ACB@[�jeޘ	3e.$2l�I�e�0�!����|��������m}����y�ov����_ ����SPS��n �y�0�01t\l a H,3
@(��@"MF
�D$���%�O����m7 ��_0�{�����/����),,���7Ĉ�E�M,=�Hd��!�@���0�yǶ�qc~�|��I��%�zO�t#�zr��u�G'.���� �a`�)� � �H� vlo䰍Q�0}o���3;�N��@�Z�Sn�:[��v׺:�qq�b0�� ��E����(����K��IDd���>zB����qZO��:� -i ���l&��fu����^!Ly�pe$ �����Ē�ll�I��<��	}2�<�S��z��9Z�˝��L�sWg�5�s1d��^~�"b	!!L�)���2*����h��>󴞆	�H�G����Л�7i+ T�b��d�9 O H��:v03��I����̵�l���@Ǝ��ØS��Jb��I�a�i/��Q���	{�Ƶ3���}��}v{2�Tw�ȁG��."C&��e�Ba����fvsʁs��o��/���nUY8qT	C�X4�$��		�Ec�|G�bGe�s���76�?V��䆲N~�\�pն+D0 �eX��I0���`{#��a:|���+�����Y\gb�c��MJ��H�{cgH,"as,�$d���>��90�A��x=��B���Ɔ��Y!@1D���EI �(FF�I�@e�5��3w֕c筰N���6��֜�xG�@
�@	$2ܕ�����4&3��kd����l��0����P ��|G�J@��B $;���������8qL�W �/`�4�jf(���Y�"�y ���lY%N�_@�\�%��|��]"�02`i*b�� S+ΖO,�.i�[�0@ &�S$� a&�2�m�N�m3	�	0���ؐ�0`r��<2��0L����deD�{�BǨ Hl8�]Yl`��#�,)\�d$��UHR�f�B$�(����#���F��H���Id@u�p���!b0�Y�� �d�7�@ T���Ĭ]a K	[�J,0�M��=! �0�*(�,�n ��M�RN`�@��@K�	D�@��C@*`(�M��X�F)Pup����0*!�(%Q�m �kDʹK&��� #aa*D�Q��3�� `Bm ��M �R=V���P��X�4T+ K�~�9�X|���8%�`E؛�0� �M�A8� ����e�b 0�Gp�������7����A�R?���*� Q�$Q��D �����kw��ц�m4��
��(��Rِ��s���h�D�NNe���d�-n"���$� ɖ
����j8Զ��6o�oA��ԡaG�`c������ $���P @ �tL������JS�"��`H�)�`J0q0L�|�����RRQ�4�	�F�6��m������Ei�`�W�
��Y�M�h�М�h�}<)!J�(UKe�B1�m�6�n"n���]�K0�i�]WR�\Dan��6�u�=Fa�I��4_���� C�i������%�i���e��"��D%*II�Cs��Q�#��%����!��O�AD�aC��`�0G0@T�SL�JWbؤ0La!�$@��4�HL�db��	�>?&HU�R��&K4�ѴI�&��D��/N�E�C�����5��/B®	q��	�� ný1��6�ȻB��R���0���Fۘ���B���*؞��kO���:�w�/Ư?S������2�m�m��M{��#��DU��*���@�Ҵ� �����`�h�c�uM��y5�?�P!	J��6���M�7�~v7
�
4`
bnD~N (L�?w�U�6��x���E��m3  �	@!�C� ��q4q���I!jB���
Q0�K���ݥ��߯�Q-J"�J��R�=K@6���!}�X���DU�
���m3ܴ��T�J��z��mz�ٶ������b�&��V�=愨t
��O*� (:�+�ZUA�`_�Ի���\oi4
�94U�HӶ��ضM�WK��T�(z�  �+�O֯Q�E���TM]L�-m�vq��j���U���� S����Dp�6	�����⢆�c��ً��жh"����ҢB�� a@�0��iw�˳���_9}&ؤw�f�h�+�ɑ�8Ra͌�ȡ�Ѕ-w�v�ZU+jŢdۧ�����y+i}����(a��m�-�a�v��̻��s�!��>�����OI�ԡj�(a�>������S�;��U��WE66��F���?�^G�l{w�x��&��I]�S�yh?%Uҕ��$+�|z�o���⩷��Q+b3.��cvY ���H����0M�ƃ��"\��6
=���X�s^�H������ �a.�$L*�E0.��Z����
Aa`��I��� �$媧�h3y,Q�]L|��d~�b�S��b�t(��' ����D5��6�5��0���AL�S���b
��[�b�&�4�lfn��tJ+.�-mBx<���o�0�b �T��U6�6���u`]�76��G�x *����>����.l�P�:Td۶k�K�����v:$ �b�B�zUh���C��C���M��<�� z+a@��Z���jb
�\ڃ($QTOm��80 
���_b�X1�;�pi쒀6��C�DA��I�_�#��л�+ ��b��bQ����MUO�!�&7L~+�, o�~4�T���h�xcl�����)pl�V1 ���
���ZU� ��ҕ6wz��~ �M�~~��OZU�o��	8��E����}L�b�7sM�;�]�����b���?D0��G;�*��m����בo斍`����b~�#@���.�b$  &�06${
@��X�y׆����� C���G�#Q��v� V�!@�����s�����3�� ����=��7]+*��P �b�h��G� ���bC  �r���WK����t�0��J�ߋ�P�;���>����Ba.~�@ ���Q� ` ��}n�ۼI��}H��t����SJժ��+���~~
s�) � �E*Y@b?�5h��|n��M~���}�o&.�o��
���>R�?�3@0�O	1?F�ؗ��mnڄ�lDa ��[�� ��H ��*U�2(� ��*���db �L�# ��kȏ?*��;
� ~�e"�}_�ȴ�^`3�4��L	d�~}0 @��_ϣ��ECo�aF�$��B�=&m��G�ȼ�'
�AP��q  yL�~��T+A���f0O�-Sm���y�es�iћ��)6H�eYVx.��	��)�b=�<r��y#�14@Os�o& ��P�=�<�t�x7O� b(<I��Q�ͼ#�<�SL0��[r�u���0\,�f�(��y��D��yg��.[z�u$����fLa(��Sͣ��[T��T$#3�&O�5q1 �q4M�Bk�SU�2���\���"�q��"+�K�w�;�z�$s�:�m�w��6�"ѩ�>�b��;ۮ�a�˷M��Zu�**��n���{��ӝ�W��v���4 �
LQ �ӱ��-��DM1���h�i���JՄ��d�T$R��V@1&����tASn��ބ=�j��:u�.��m�ٝm��y*�Z�Zq�����(�"w����WS�f���&����-�V��~��L��:��Gc{�;�LJ�Ү:������b�"S�%�������lo3y.ݱtٌr��B��ŝ�脥]�f۶��s-k�ڕ*w��ûD�J�R��]���6�̶�K�"UR��&�F����$7j�p�L�l����'9�  $
*Q[�Q�B�t@�r�QHEm
i�ћ��	"ϾF�����%�$����m8��Ǡr�Tu�B���ݮm���g�JX�:�dW�)SZ���?,
!u�Њ�E�&n
oҶ��{�:�Vp�4A��v�2sor�q4@���tQ@1�s�}�{JS�SH:�����\�^4�$���@�R�;4����&7l6fYC�ܥ�;-.jcWbJ��
���A,:�C��v���m�)�Ygz@�Sk�M��:hj�ׄ������[��K��m	�$ڶ�W�y�BH��B��C�A0ِ�l�m��������PLp��}ǝ�L(�J��QٌHG˥�( �[�{�M�R� ���0E���`3"��'�T�*U�w���6 ��⚣�$Ҕ���ڶm ���jsܹ� ܙi���{�."sT�c֦;PRS
"��kh�՝D%D2�y����@�;u*h�(@���T&UZQ�s�� j�ڪv�v�\l�����[�@�������povqol{��T.���d�ݸI�@����褮W��f{�Ko�7 ���}D��fR=i�T-�Ω�����Ət4q͡�G�c{���Ds�o�����t�6�K�m��`�Z˪֘T�k�h�SI��WݩP��]�r{��Miw�(�Ik �S>A�ԡ��4~�$��(aH@ 
oc�6�h�Q?-UUA`C�����I�YM�F�B�B���f�d��@h047�'�7T)Q��� ����žN;:e}��������J�Tu�۶��ضm�i?%�#�)�ε��bo^�R:	���H:廣��U�Z-lϼ�{��6௔�"� hH���v�.D����}��7 ��4UQS�j��e�ճ������)�ѩ
�m���&7L�HA*�V���h}G�ҥ��-�ZQ�:R��r��.{��o�a�U\��FJ�lO�
贺�r��v��_WIQSZթ��6�wGo3��q��V�:�����lO���ʨ�5�*�rM�t�$��bQ5���(v��f߯@�K�SU+N��m�S5%��z��� Ē�TTba�D��6h%%.�v��p�`�k��Le��I4¥: �.d�R�aG�p�@���M�?}G H���� 2���|��}�|r�k�'�!:�;U\ѮmﲩQQ�J�����&���$B)T��\6�R98��lG�����6�l���d�r�h��'	j�������}�)�@iw���@�]���0�L�T=l�s��m���& �Xu�N�ol�m�v�ఋu��E���P�\��M5n�6"�$#����|�ݙ��h��
M0������Ʈ)M5ݽ��m��WP9ݩ�Mn�FCut*��*6IR~Ҋ
�g���54{MP=Gj�*`�46$I����
&��R1���c���b?��&
  :<�l���kU�r�fff0O�[:u*ܹ��ͅ��r3��V���$制���ƈ�T�;ծj�j�}j���Aw����\��Qϰ,:�q�˝����c�L�����Q�ж}���M�
Ct�褕���}j��6I?7!���EE�^<?��k>t�t��v�{D5� ��jw*�8�y����<�����*�v_�1�!�� R	��Ze&�����	QI�"T ƴ��0p=�L�|7ł	l������uA-��66�T�xU��ꢆ�WH�y�]�.&�K�Û���T�Q��PX��s;A�:9�&G&���to%� E�tChZ�S#u�r�4��ܻ�@�rT��|���۸���TZU�Ӷ��t��a�? ��G��Nt:M�Y�zVQõ�(aw7ۦ�]05�g��õEQT�t����R�7[��F@"�-
�쮻���P��
�����(<�y��+UPJ��ļ�NrY��8Z:Z�)�6�;�ݹsg�wVt�0�h�۠<�� ѩSGp��)��P,�j���BO��RGG��\{s%��D��Y�'C(I���i� ��n}LU4���!.�x�:j�\cr�ӽ�#
��8
�f͊���j��L�R
{kAT$N�5nV�<��u'�5��aJ��=E�]����6<��������L����ޚ�R"�,U�vf��	Q-�BV{���F�A��(�\I�"�<�2�jpض��z�Qt�/��'	@FO�%Jվ655m���$\�ɦR=� ��'!�8�`��DD�;��E��5WI�9PR)�ۜ���I�D�Ы��$��U5���fvQ�.�����'��0�m'o5!"�e7���$֞0ņ0} A�[L`0��3j&�!<��q�����-5��j�mgj��Е����jc ��%���d�u;u���)�����-T)BR�Ȃ�q冪S'�9�RU�R	Ǽƨ��*4�'��S@�	"��j�y���\����а���*]t���uP��q�s]���V����K��u�Z��Č;�;��>N@���Q$%�rk3D�k[C��G��UU�D�P4U��Q$]�k�3ݙ�"\ZTKE᩠�H
�VѲ�T3浕;rGڲP��z.25Q,˨�9��ٺ8*a%%J�<����$ue%o^�
.�tJo�*��&OG����f�qҁ�V�M[�u���4���%�X[u �)�I�B'u�<%�ݨ�X:���zI�a.�L�)vt�*zJșRy�I�Q�B^�Է�L �(�i��S��.�N�8e �Wt��>���Ke#�DA@�\4W��xE��.�����}� ��]B&�5Ǭ��`H�\�����OL�O�O�5�J���MjR�w,]�gRQ�i�>�����<��ݵM�P
jCO
H�;K�B�TƼ�L��B��xjJ�J��St	�ZS��K�wm.�VS�׆�^q&)�B)��Tȩz+�0�Ƙ�WZx�R��<E�҅��E�T�9G9����X���RSjƪP��ޖ(�rP�j�����ELiQRT��Eq)q�pR�
��JM�K86�)^��ͤ	�B����9�(*��r�^�N��\�Qs�R�����+V�Z�%Ĺ\�;u�]x��.w��`�x�^C�����>x�}x�TǬױ�~��B���H �����q	c1φ Qra�<G��:j��чLA�J��jr:J�Z��z�Ň�3���
�C�@�Q�,<�ٳ���<��DQ�Ԝ�\���<M���X����Ct��*L�"�n\p�T]eǣ�aL&k�g4�v�e���z*��)�sӗ��M�$�(�	YSyf͌�t1�r�P���َ�0pP�<KJ	w���!�
	����i��vy��!�=�ʳ��(B&°���lY�v�v�ئK�#L6����JI ��8%��t)�FiK�&���\�MC���5kfVV��?�Ȉ�M���x#�-��˄�-u�Ӗ;mI�JF3�!J�#�a
^�(�J�k}�m�**G^���3�o�2	� Z*�8>�jV&�����^Ya�����e�g��euO����ݬqy�2����Q SS��t��Kxo����k���#G���T2]�V�u���9L�Y�fe���M�Q)�b|��T�y���ݹo~�R5��{�o�޺����t�A�f͓'�}ʑ�h8���-1��v{�گQ���z�2]�J����TG��k^�LV��"�����n�d���t��_���]+�$J�n�)·_�z��Ql��y͚��2�s���Q��o����T��g��i�}٢��R�S9>e>*Ж"6�b�6`�� @4 ��ɝF� 2�z7��t�=��2.�{���I|�#m �	!�%٭b�ǘ��9JU�W5�u�nQ�������w�~��$�2}�Ym��ٻ���W��v��*g��u���~׿ۯ�����)���:�^}�yzz���L�4����k��թ#ۯ_6��.3�}>&'_�^}�\����z��nf��s���|ꬫ�{Q�ڮ��Y��>��q>�e��_��VO��H��ԩ�բ�ٯ��׬Q�c���[]G�>����k����b�*_�V�V�گ����r�� Gǩ�z뫾Pk�z���i^�����1Q*!�0�>�"I�6]�JK�d4����UPT*���DLFS���H(B&3��t4��Va�zY*(Wŭ2ڿ����!�È�����7U��L�����p�U�U�:_�ߝ�����տ����qO57[����ʧ��ͩ�����~��}���:�o�0n�5��/��*�Uq|��+�������P2g}��/۸!j�3�(l>N�ǹ�~>}�]jַ������n�׉ʩ�R�C�k��n�	��{�s�t��^�
�|U�=_���E1o��0ܴ�Q,�Rl I�:����]M�8�*���35O�z�[��K R���u�2�� ��i�0��L��MPބ0�0�# @ �b36���.��z�o�FI�y1�w��u��>p�ڿ�o�C�lNN�꭫��lSZ.��rW�Y�袋JX  ��g}[og��n&
s1G���:u��u��_<  !��Z�v��5]=c�0!�>ޫ�l��EQ�3g}��Ml7o�o�����;�qW��uo�h��_��o	͍S'{;k��3���F]M��ݍC%K	 |��r�#�j�ݬ�
����(����a����s}!t��׹m���5�52E��2��7��_Go}������%ѫ��w��}�^�u���~��C�f؜99�iMl�b�L}��s�jVw����X�qo}�ߤ^{_Ϭ���!��U��V�'�������ޮunWΚ�֚m��G&Lm.��U�vP,�S֟����]?ۍ2I��g,�� �F�ty�Om	6��դ @
C��0ICy�JKvƲ��
Ӡ�5��'$B%( `K�s�3��@�L�(	C�ͮ� 	�  a��b3R���J�
�Bm��L��.t�ӊ^
�uֽ:T?�]�6B�}���{w��n�T�:8�T�,K�@��Ck������tqo\��R�d�8�U�V�~��ލQ� ������֍�����[
n%�3�\��I>n1JeE!
#bakém'ge3�m��.�g+��i(m�sV�g�|׿����k���׺i���m���H������߯�����.o�+���%IVn�4���Sg�7.�7�n=�h@׺��f��ۻ�=�*�K��(����\���u�;={���(�-	�Z����aK��-��!��Xk�9ur2e��m�ƛ]X��w���nzo���z1��>��~����}�͖��+�8�ٺfT��1K��Js��i�K��E�ʕ��[�����_{wO�P��(� )M�٢!aaw�4���\�k��I ��o�w��������&C��66N6�Mo\��m�!_ܿ��j�箟��
��U������3���u�� #���$�BB�tG�A��СH��:�������>��*��@@���65[k��U"N]����~����N;9��Tֲ�!� �������([o�j+�o*����/j�v�l)�U@&(�e�	��5�М\�lW\���
�-B���;�-\ܥ�fɲ���h�¬�''�C����8��;.Rl)=�"٤ٮg?�4Q�0w���|9�_���!�\������x㍵}����srfg'����p�Bm�<[�U����1I�"lL��\�`���Jw�vre�d`.v�C��"�|��u�����%K�\�'��qa��3?Fp�MUuԑ�L.ަ>��B������]!�;TH���0��jf���׻ڿ���B�.��Ι�$WT��.\0��o��K�MEI*a^��7W4O+0_��ڝ۵kɋ�K~`�\����u�e)5��gj*0	O.��yS��ֹ�#.���|�����Z��y�
Q�cd��TR��	m!ۮ~�v�޶K�q ��ߕ3�$����e�P|A�8ը�T�H��*���P�.�  � ������Rq3�$��f�ko͐6ku�,-)�� 3M����q���v�^D�`!5���D?F�T
�!��Lf8m�^[J{�Y�����m�0t&��NVwlŗ�I(B�%&d��� ��8��v� ��fs����~d®������y�?� �SMw0����8��i���xK�  h�S��Z�ڳ�3�c$�qȬY�Mm�޻߿~���% �'ֹ��5P�pW�Uf�^����|`f�yD�8>0ϬY�o�j��m];o�������z��Moz����[�+��(��XY��5�X
>{�%$]+Uu�3��̏Q\:%��(�I ��{�,�����V!�g���̤����ʓ���cm4�� ��゙Yy���r��f?�y�=W��?ϛ{� �/�G�nt��l�,>�5�I��_\������"W?g�w]�Yyk������m��M�X�EQ�ړ��F�S-w3�!z	w�����¾�fӱ������֜��^��� \�Q �����y�UG3���ڗ����h�ә�a���2�� ���N����.��CK:�N�������|ͣ�q����c{j*ޔtY!��B�4�hY�̀���0t:l���iQ�p�rE���W�t<*����}.�00?�f��h�2Q�B����V��@":�v�}آ����R���]�-y�%�J��
���M��Rɒ��s�fhRV�%�Lpy�4a��������Y�����'������iV�&��d1`ؙ��Jk�����ƪZ�$}�~��h��2���I������m��Jkԁt���� T޸L*�[��k��.[*�#p��~S����yX	�h�i`�X���f���R�����H�����B$��B��N�f<T����s�C�47,������L���zHQ�q|=�����L�"�%̝�n<TrW�|�J�Ʉ�5$�H1_c-R�����,����hJFA`�{\�X��|��G&��z@�hqosAf������_nZX����!�Dl�A1�PD�걡5��Y%�~���%OI� &�g-W`��F��"@�b�����F�$��h�1d}�KB�D	�"si4)��o�#w�i3ש��R7�C�aȴ�}��D*��yH#�bc��	�:��s34-(��|EC�(`����O�}%���tG�(I�0���P���?U� �M�-�����Li�E dh8�W0��
�g)�Mb",��?�"&�D�& h ��vT� �cyK�l�z`RlYp�]�b��}��|�H�ql@)��&a"��������@i��u�/O*�w�c4��" �O�����%�E	 pt7� " z���8��*He*�I�NJeB�~ �J��$+�C�?�e�"(aI@����AI	2a�J`2��^��L4���\rWS�6�5?��`��L��I�?[R����,��iueot�ܔ,|�����Q��P��@B��#�WjY.��X+�cٕ�i�Q�+��#�?��q�@���,˂a�]쎹qW���6|w�:ä�K��f�t$E�JaWk���\��C�!+d�"���<ʄqţ��R)����17Va�����$�z��5kJ#�� 	 ,�T�f��;�ɒ����$�h�H�rt�?�Y�t)ƒ,)����(-��l�OD ��5N�8���@f͚����e)HZZؑ���}�e����I�5/�q�Mf֬��1H�0�dJQ��ɭҒ%����j�g&U8���53�p�E4����`Z�5!�S�P,��$�L�<�Re�?�-�Yyf��r�(�����Yb3��S\�������T;�W~f���5�̬Y�R���/�P[�R�G{��̐�����]���G��s4��8�J�%$��	���}DnQn�z���9>r�;a�U�z�e2YX�%t�����d Ah�&���Kh���̬��	R����1!���"��~tU��¶����HV�*�@�lͧKd�5����e^�C "�q��nV�S��s;I�r�ʅ�m�J�c޸�7���wZ���Z5J�?������f���j�{s�L��{ϻ6~�u��E��N������j�+*�qTB"�Bh���<�O���	�d����iWN�(���7���_{g�~�n~���e#ԟ>���W�^�>����ݛ�g�9x���Z~ꥥ���f��~���կy����Hث�L�yfz��_�l��8�R	�ڕ�?���]|����w{gO�~׋��<]Z���I����<���9��{s�(u}��g�]Dk�ʆ�A�w��}�˧6]D�2ج~�w��Um����%I�u�c�ڴ�m�a�M�(��P��\{;��^�+��:�*#E��]���T�Weq�p��,�̦�� 9Ʋ�JK�m'  ����O�z1u��q��A��k�����/��X,]�/����3���D�����\gNfzZ�_��;Q��[G�_2F��~��T�S��p-]܅��;��B��X�QJ%kr�����L��]��Z�����J�W��/�N��8�D��5F�m;�]���7޸H�\sNOO�WO����VVs��1�/�Rǟ���Uwy]H�y׻5��)ݼ��\�+_n��Q����E���W�R�g����[]�!��Ɍ�Z{os����fo�-�5�v���k���������j��;�W��_�O���Jֱ��GX�z�w>N~�eK�J�]i��^�֜����ի�;X���Ő̬Y��0��T|*��[V.��Lg�3�0@��߄���ђ�a��I���W�(�˧��׬��b"6U]�����̪�2L
m���99��c�0�er5.h�f�M" ���<$@W��z)H�f����9�^�o���[ͧM	�����ˁ����V��Sk��X\8�\s�9�+ڳ]����c[�ꯣ�KHD�_aL��u������8Ƿc�;�r���沣�\9u24��q��)9�B���w���	�O��������}��V��^���K���v�����q����h���7����ZiZ�:�i�N!�1�7���v媓���\�ߝ��ߡu[���M�K�^���u�4���Y�#Ǫ�����t�kN۴>C nanx�s�����Ӥx/  ӿ�5D���uַ:���Kd%<�����a�g�9n���|�7��{sK@��$�a�Ӯ�4�����\9�r��f8w�������m}[�
��;,
�/�?��K�_���1U���+�j��ucn�0�`qp��E��_�	l��s��/�u��H�/�1��֯���E�Q:���JK�\�`,�$h�i�6������s�y�,U�*us�{m�GO�����^���������oU�-F ai�`|00��X� ���a^��ze1�H�ԭ��x=,�5�W����t܎��[�h}��bQ:8��a�Z���C�
a���t�v�{o׵��0��w���w��ֽʺWGUM�2����Ҩ�y��5��k?{i���v|���θ-.\����ԮL%�Z	b���a�~N��9�m_��ׯ�w���S��(��X2ʌu�۞y��Z_��QѴ�kWZ:X�b�fٹ<� �b�N3�^�9��������z��lrU���2�&��h 2lkR���V�F��t��\�Trժ��eƺfvn�$7����{�H�1]gNNX>�5�q����FC��n�+֧�Q���b���A�djI�`[�ٚ�m�y�d��0��}�wn6��0����i 0t?35D��J�Y�{+��V.��C���:I���!4ٚ�+���{�>`&5vjo��)����^�(I�֙դ0��8F�S����U�$K�@ BȄ�m�ϩ���^��U%���!��ðE�P�{��-���`h��T���g]�*�%y$I,@��B�L2a*?����x
_��H
�,�cS={��IJ��Rɟ��|�$� `�L�����w��տ��Y*@Ue��6R T��-�"PT*�4J)	�w�w�R����n^ ���|��T�k����i�cG��Gwߔ�,����z��|��_�5U������f��yz׿n����Rt)�%R!�Gx���FQZ.�o��+����b|�,�g5_�鈔��v&�e�k:��3oeieQW=�s���Th���[���sQ�Wa��E� �X���k~�����_b}�ۦ��}nK����$�?\r�
3[���ju|*u�^š���|'ƚ���iZ=]pd阊�ܼ^�(a�t�63 ��_ ��_DI�!0F�2F�oY! % 4|Uk����Lff�h,S|�� � @jf�>Pr
�٣�a^�� 	E�K%�E�>�FL���-JR  c��>�x}�IRCO�ٙ��$F�Q��"I@�E!+���(���S�Ϻ�������M��ZԵ�뛻L�g���De�����&�����~���5������MR	շ9�A�cJU���!G�J�����k�at�tl�.IH��6.deFyFTY�:u�[G%��p�mn�i>;��m�ic��� @k.f֯�W�z׻�'r�R��?r4+TQr*k�k��8Z�%R	3lz�V�R�cT�"q4����$��-kVfv2�*��n�Y7�����7��E]^4��Ӳ�2�6���c����0��k�nһH1*�:E����̬h�Y>���Z�0-^$c L�aȤ����4 ���/7�H�IF��8F��G0���}&0D���"��E!��itWq�M��E�f��. ���osZ�T�T�]*��r����5+3.d��6 �h�u6}G�Q���a��9��3��1� ��5���V֦*�=rb`K�۬q3��d�阯9��H4$�53&[j�̚۬�E-��H6����#q�dM��\?��K��!�!�,�s,�B����e}���Q�?s��A/��aV�̈�����T��<vOe&C�l71�j�`�\C���`ee��Ǯ	005�̬��x����ȑ1� ��d����"`�"�VvI�ܒ����5���ic.I)j�<~M��2Q��	�P�_��$<�������QL��.!�_ic�T���_��/���B%8��_j J��l���b nb�H���mL.��
 P�nd�/������B� N��� �eZ� ����X(  ��A ���@3xl O�<q뫩Z��e*cP��1�b�����L���"ATƁ
'#"'Cd�s��0�5�LK��77��b�L1%Ocj���f�L��@2��	"�TFD�$#D$K2����5+���-<U�(us�\V,�iL�aVc3-o��Q�u��"
2=�d�h"A�*(	A����ʚ��\<Y��J��4�ণ2��q?eSC1��i�P�4�A�i[U٪b�?ƦmO*#$�,A�Χ2H �D�k��g��DO*y��K��Vw�� !�"A@B"��DL�㰨�5�<��uSS*S*o��Ng�[ךN�g(C*r%�\���v5�����$RZ^b#�:�ˆ��[1d+(� ����<���0��� ��Z:^�Y2ɒ "���^	��	"1h����t�iٺ
�Je�Ryө�Nך��� �R�Ƣ!'��B*P�B��LB!���( ���`L�J��e�\����4zR���޶��0��-��,�[UCeDv�Zn�.��%�J�T��e��bU��2��.Vy�1���b-ۚ��G�(�5�k���5\Y0vfӅDed� * �A1����bX1��F��b�l��<c���:�h�Z�j 2�׷��ė1�lr��L+�³��l�Zkmk����65�|���t���.ÇI 0؟ �|�]��g�nG�d�dR\��D�dL��<�dɐ��r�����y�!�s����\�9��]��۪N�e��B����������b+�?v�m^"!
�B
Q!���H�,I�Ԑ��۹�9��u`�;��|בW�ӫQY��A�iy�v���jLWA�\E��s�H��DA���䩌3�s��v��u����q�u\G���q%}��UU���y���g�Rj ` r1s���$P�d�>?CY@ 2;�S�!��*�8_+��D�0�D�
�J˖b&Ð� �(�:�D� �6<� ����T���5�&�?��n���5�?c�YQB�~�6A�yϞ�8�ZR=	Y����P��!�[~V�6�ٶ�30I�A�q'��\�[j����uX��
�)EC	�dC�Bg�I�(JRw�y��5��UףJ�9�/Mfr��Wi�$��ڳ�L���l_G������Pl�`5O�������،Г���A��X_A��J�$+���o��s��9�!Y�ɧ/��P���eWM���v�K=(@�ud��9�9�{��Lc�x��J��oZԳ�e�Ԝ^�����v� �d���C�D2r3d��>$BD B�!��#C��LF39� ��*����L2��03L��Z�E��B����2����W{�����������
@��e*E�.IH�&���y�u��<f�<� o-m;d�o��ηw��%Q*�� H�Ty�Q/�J`�Vg%֯�!*I�귝M�!�$S�Z��x�c��[�c��Ň�bjŔ��gj�V���,�%�q�aD<��u�������c)fr^�~��n�Z�4�L���b�qeK!��&D��O�J�d9YN&��"'
Y��
-#4��^�40eŵ�_%J�l*�P�]�z�]8B�<"����5����>�Z]�T[��V]yoڭ�aY@���J�D�qV���j�$?�5r1l��~6�_�E�ˁ�l�U� A�,	*�̨���j6��MB�\('
�l��B#�1�z�r��4՚�mg�l���M��Aɠe�Z���TkJ�2�X��-�R�ʆL��g݌����d���$˙E<N]��r�POw7_z���)�b�
l�)�b2�v��	��h�ʄ\�a2'ב�B�����03�:�x[G� ����QT�f�=f�s�� �����b=��U�-<��}�Ҳ�����eʿQ�?��Z6�b+w�Ƴ�b[e���ʘU�*5�����װ�Q��(����y��/�$]���W&yI��6����Zߝ��\}:��$�3�%�==� �$Ԍ�l
�dzl�����tXǶr{X�b�lUe�B�j<��0'5����:�
�֣�e,:�_������]�P�1���u>�g����s�l�@I���q"-
�lM]�\Qy䏕����6�ʦ\��-��Ԝ��+��<y��\��ʢ�_�����(��@�=w���Z�_�s>k֬餐
�I!�q>��åK ��%�<���Ɔ��_k6���d����=j'���j 0�(6�X�C� �D��
B�<L���M�z�,:]���P|�S��AA2�?z2-SIf_�(�̣�d^I��m�55s�VC���mj2�+��P
|��+��lP*���$�����8Y $K�L�LJR��* �q���d�C�J���J @1R!���j�*m�X*�25P�v���Jky=�f�ZU˶��q�L�Ef�tc�az���%̃v��# �-z��w�PL� Ѿ�@ԃ�;r"Ӵz6tk��^J�y�w��ќ�C�f�4"_�`��-��?cL+H��0UI�W�p)
y@k���4�s���cvɃ�-'�$�5Gwdf�J�0LN�[k��ʔ���~1������f�+�b�j~QB���T��4p�Z.W�!<^꡸e%tp�q��@���|V�}�L��V�@�������" �#z��>,��&)�t��
��H<=nt���e���cOq0[����h�D�� ar�!���:���� �4)z���-� ����ն6D����R)�����m�yH�� �Z��`���GKA��IR�.-b6~P��Z�wj @�F�l= H��U٪�(���"�1*�ޯ�yx��d$D-�JR���*U�QI*<��HJ.�9�^{ U.�Z_���~?˅! M��;C�A�̰:�+�퓩
�i`L�oMc*�Y�D!���n�jK�K�Ld���QP�4l����a�H��=SX @�tw@}_]��@�O.D�Am�[!�T@�m��F0�T�	��o�:]�Z�O(DN��Y1���L|�-����(0@��$( �i�B@��{WQ���U����Ƣ�mi+ ��	�K8���ggU&��I�>���VI���o��KP�.�<�8 HP�PdZ�>�U�O�V`�s�Sr=��SҐ�g"$�HwŔ�[K�`w�%��w�Q�b�f�&��h("��pO� 0��z=�^�e�
�+�S�j��󍙒!���If��I¤sg���gFi�8&$Å�I�<"W��\l-�2�B�缆�0C��3mWF��4��������w~�!��̒�Uf_lH�6W*r�j�*�H�H����6�o%K�r"1��x���Tr�� @Oz�0�P<T�����'��︦	�
LcCc��L�'�2գ��2Qխ��Ϥ ��^V��d!8Y���l)1-S2���=If��-l=If�?dJ[���{�m1-��A!����@z��f���O���??��n*�
k�3��6O��)6S+�fJe�i٪ʘr�d*[+���k�gGg�a��D4�h9ө�=�+QjZ*�����
�H�8Y	I
���H(�8TBAŌ�u�-;�������}�8��7��;��AAxʈ`=������������ܫ/g4r1����Lͬ�i3�R+�lu��P1�T��Xl�͘^�T���=�5�$(��^�: @��	�V�
.-K� ��EB!A�P,
t�S��"@��n�n��~~��9�W�r}dD u_qD~���,�@Qڃ�L���'�������|ǧq�\bL����S���bkl��Z���6O�\%��*�-�,�@R�7x��:]�g�2J&Q�"[$A2w��������ŧ��,��j�,�,hֲn��{?����^�'W�F��;"
ɓv����=x-�!0kt�Q@�A����	���#B�Tklk�u�z�������G��Zv�tۚ's��Ԑ���ط���"� ���|���A��P�iJ@Oll4��&<��3�e%��Qx��K
!��2A9	�2��ھy	��H��z[���y���~n0+Y1P�#��Pu�"�
) ���q^ל#s�+�ʴ��LcJ*[�i�xS+ưR�4�RL�)��|*&�!��o�h�J�z��Ͷ�EM�`L�+_(O��d��d�R۹=��dF(8QFŔD�"QA摔F!�Κ�����=��Pu��G��mU��JR!09���29j�P5�7�1+�2������A��V�
�Vl���J��������R7�����Ѷ��DQ���ʨ�Q�,�
AB�CIF"�$dD��'� A�Ee=�Y��z?�l]a.�R�Sy[�tc�O�ye>ב9Q17���.�i*Sl���[i�4�J͔��6��r�8(����hCCmQy�;lCoR�): xl�Y�m��k��� z@��̾�gc	z�zH��̝6�)Qt)�1+ޖ0��dNC4Eæ?��'�`�.	ۤ��/ 6�3�ʨM�� ��J�<g7�f!��<��w�ys
G^���=}z0�1y�*]H�1�i�٧��Ycr��HМ�@�D����E���s����\/�����4��#=�Y*5�
���Ͼ1U���{��L|�&j�sF���=��ɛ�����/ �N���<�;]�̿�v��5U���О��6�$1�	!D�;oμYP6�T~Sl���G�㗌^� @��o�5Y���r���Yӵ�ֱr���G��A����^�L�0�]��������\lb���E���=a6  b)V*��Q��hsxU����:�S''�TA�(���}	T�-�+w��-�{s�eT&�W+��Ϛ��S�2�a=oփ9��d}9t����T��U�1��Li��Զp(j��fX�1&�'�'WJT9k�ZZVw�E�4�J��F��sv���+���Rу�u�w�TA�����F'-

!�T �%��lJ6��HP����2]��U�|T����c��u�C�/�1+����e[1�bP����V`�4���R�)5V�D��)�fY��Yd�l4Q*C՞�h
s4�/V��N�y׻���9��yW&%Q!�.$��D��Y�z
�$P@
�\u�3[_����1,ֳ�֋M�m�H��4�b���e����nTk�v-��k�`��IEJU�T��Žѻk�E���\�}�ѡ��AS� loWk�-,�� 2_ӛOz���~��m�
�c�\�ѩ��zLq�f=��Z�o�@���i��
�0-�σ�ad��\ȥɥx��e���NoJWZ�?�wfw�Q�cq�p�ҫ�^-o�La[A�[1�Eg���Y)�lUS*cӲ�WV '�2U�&?��sa�r�!غ�Zo�������Id�v�T�L1�HB��9��$�H�DHIF"��A���IIo�����}к]�.�C�����vmk��]У��*�Oӂ���f6:�l+6��,[a��U1}�@� *�%e��c��~�h��̑���W9��������D)	�ͬ2̬��Z���+YAT̒�N�H�f j�͈�(���hq�"wF@�7�Aծj{�h�.w���/,�V=�V���T������Bw����75c+����*êƃVF(ڌ��U��~|�υ�G%�Y�����������&HT����M Q 	A(D�S�]��\U� �,'#�V_E�V��۠�����:���������E�z�[G�^�50(`��/�>6�L�
��*�9�lt@RG�����xe;u>�:�_O��S+K2�(|�/� H��gTD����34M!����Qx�%�F�ݡ]��]�i�C���(� ������AFH� '��ob��v�vw�K�:�r�[�u�S�el�:��֕R���ci�V�U�JP�>����.w�C�ȳ�o˹�b�N��W����2C*�"���lJ�ꀂ %Y��(0fw�V�;�B!�����]P�V($��O������q��2��~�#�`MO�:T x���u�ͅ�T��C��p#.�ŵ^�{B)l���$Ũ^"��m�rKs����5@�a���U�R,_��H�6MWZU��	��M%�\�Hyipl�X%�"x�����$^��D�荍��;�ю{-�'"�V��R��۬m�i�Nw��KѨ�-qU���)����qKo���S���I�ҥQ�!^�
��M�@5*�-Ux-R(�+�.����eYo�7�q������ՈP�BԤt긄�W��l�m܆vU���;�� �z�[P�Z�;�zQ*`��ۆ��q���D�$���"H�O�P^�
 �64q�!$Y͟^�z.��	��m�y-�ۛݙa��ӝ:��+^���3-;.$t�z-��.�m�6�ǠSG�u�+k[[�N:�䪮��m�H�ӝ����D�'p �QJ�
 ���80�i��7�IE�&��[�'
qa4JRQ:�t�T���{+���̻���J�I��/PE�}I�Y1��kuT,I�t0�����횓ꖪZ�V�Pq�Wg4�[��|��Ν��^;
�Eoܷkw���4u���D�a�!BBQ�8HB�/%/w��M��m�� ,DQ��E�L!�E���l])B�r���~��6���4�9GG�j�(�+�E��Ԟn��t	][�]�^0"��6�rol��֩C*�z�2&{�]��F�������\	ڝ���m��N��T���hh#L��rt��]"$A��q �#�mD�DMԄ�^)�`�.��皸�].'���i��l�lۅI�V�k� �kQ��r��r��F�Q=�Z�&�y��l�7Z]��:���W�m�r��u��+�$�
�ڵ^���m���vQ����ݏ���Hd�a�0�T�iv�r,�>A�z�D4�DLa� �����/{��\��2���!�ƕ�g=B�mƶ�+b麥��ۮ��(��Ϲ��|�0�$\mI�r�#0q.z۴�l!��v�(�w!m�|�9�.�s�N���W��G(L����._i���Z
�bM�ܑa�#�����M42�@B�Ӟc�`"�&��#
 *�BH��-
���q���;7�\v.��2�DP �IG��m̶M��N�k��jX	xG�)G�m�l3��F���5Y'�C��b"��ÙD'L,�!�iE'��'�)l3��f��P�PW�Vi�(� ��Ӵ�19c�R QI��Ҋk �+��k�h[*�@�\PP(� �g7� �0��L(��(|�3� o��M��M��ѴQ�U��	���Px~��9�Fӆ��]}7��w,]HE1x���&��=mhÁ$jB�kB������������n3Ms�Z��K�������M����ez��jq�Z�N�$CŞ^P�M����|g⚨)q����U�D��
P�t 6��  ���
A$��b ������|�
�P<�J��2V%��($������76��0$ɤB*
�D��
!���͌��&[�&�w[ce�X��tQԔPEI6�����1��m4q[�Y٨P��D!�%E��y<G&7��6q�\1%%DM�ĕ�H x��������7��.FŢ(Dɗ/!j���@s����P�M��*�B(t���������v̑������|{�� F !B
J
��@�_C)La  �	pa?�� 04�Fa�0@ 1T��%JP��)�	�&Cs��®M�@!.�(J�EE4��(�@�/�+LL&�3xJÔ������D�PR!J~�)����%�an��9C47�P�d�(�j�(B�eT\Z%D����&s���CO\_`.�����a�2�R��.���mཕ�h�::؆�ќ�H���tY*D�dI'Y�`��5�Cs0lb3�M�	sh�E�q�2	���G�THE�] S��s��� �`i  l�+Ӳ�ig� b��ۀ{� ��ٞ�)yۡ����G"�!A1L�~�34?g@�P@���*��:�V�U�Ul-�Xm���e
c��@i� �]@��� �G
+۵
j`�a�L~$���X��� �P�p(�U�XI	+�{/Żr�)�1U�tJcJ�^e�XA�hH��@	� �b(`�[R( J��� a��X+��1#�b(��Kb���7.�p	d�(a�4o>XŪZ��bJaU��x]5�*f���(JB���pA�t!���@���h(���"6��`��H6
 ��.�#��O�����(`XeP�rr�u�a4�Bw�-l��1��B �T� �*@�F>M���+ �bHF��h�PY�p�m��@a�+�Q��b@Db�P()C	ʐ ��
`BB��@l7���2P(��$�i�����
V� ��M�T�����A��	@OQ��h$Bj�-R?V��''��H$�%���C���&   B�g� �"�  �X�� BE��e+Cԯ��* b��� �P ��0'��`�fy�9u2,@+�V���fl)Yfߔ5+  "!T*��А�ڗ/F T��Ě�Xm&�lf.�C# g)g�"��:`B ��s���C keSL�wmdb,�6S,F,�)Hl� E
cd(��SwR 6��f�62 ��e`< ���j�d bY�mf�R�1����+gC��##����D �2��1)L
�!K�;�ɀXH���@G?9���L.CGl����JI�1o�c�c� 2
2R�۔�X�[N�ECHHe(t�b:&�π�6S���@	#K��� CՆ�bkٹd��g0�l�f��cs|����z�0��,������b��LB1�m��@��<s�`0� R!Բ���k�G�Wx�8�8G��	���0Y �ʎ &	H�&�AbS��縪��lj6�+l�p�կ�w�0k�P�{�⮌D�eY'LJH,����Ь�V�&�����p�aVߙ#�r���0"8b�Y��dp������C��B�N� ���s�Y��<L�:�Xl"�uF�r1H�u�n�nb[�j���|���M����v���6l�;�0	�1X�C$ 02ABH`.4\��vrC^W��@��:���ؑ�{���ad1���i"H��@ǁ��櫚
 �=з�3�H�Ԙ�u���a�X�#2L
a� 7
��)G����Qw�v������Aǉ#�L��Ԋ��F�������	(�Ԉu�s[ņ
�}0p6��9c�H+�SE�G=v���X"����l�q�!����FS��������&ρ�Wݫ�:�z�AFR�?���H0�f��ad$�	�X��瀆�0�����,�o݂rc���g�K�0�	���(�(����&1�,>�82�,��0�C��9h��F[�[�Z���Wzr�tb`�\-}�}��B/}'�Tw9�/��r�!@��s�aS:B.�(�ںf�tZ����N�'��N ����i���s�����a�o;6�H �0}]%�,�Q  �H,����^K����uN\�����q��v���ɀ_�3�����O��TT��0$#G66Yb$ 2��U�!�#
a��`:�r�Ib��*� _��ɏ����~=P�v{^v{>�<��'�ja����X�0+	�KF,J�X�%����Bb	C``�=Xp0���w�
[��|�? _��x��r�y��s�j�#~3�_��s�c������1�!���  �+��<v�;�<`�Sn; dl׎?t�7u{b<�b�.�9 Y (���k�( &5�d\h��ͬ� ��^�T���t�k'�����ɼ�ρ��@�=P�$��!���rL"��B �	�5�:�[�m�l{��N�r# |��C? ���`���|2��*�ׅ��AE)@�d�#$d���DĎ@�8�Ѭ�Zm�w[}��H��N�r��kǵ07�6��k�Sn<��j�_����bR˪bR&f@�XB������xp-��ξ��WD�kǼ�6��펧[y���9e�&�{ylV�\��? #F:a	 �:BQ� Ec�0Yb!a�����+z�F�ZccU��جƲ�2ݾ���k>_�y�ڴm�^zm�i�G�>����\��k�$�$�XDH,!!d���Hb������������&�I�E��N�P��fc~����|��4 tv]��n��a�k&N@�V�;���1��hb	���!ÀW"��(p�(� P��0���Mm"���[� ���?�?�� p��ۦ-����x�W
�q?s:����b�BB�d���`rdg�#;��p�5mv[b�ތ��  g~� X�6��ׇ;�WFxb�m+�p6���C�� �@D b  � �L'd1��C�&E�"��f�NĚD`�����޴�ڡm(�N�t�9`�� �0w��66?�6��y��f��Apb! b@���d1��H��1�!�߉g�h�w�M�fi��S�S�d�P���ҽ:[0�z�Ǚ  ��;��M"�! �H(1@1b gA��"l �$�� ���������ۄ�]-��o�:�N�u�� ���^�oXn�&��	���Xwe��!H 2ى���?�|c��\*��b��;�� %��4mt�Zt]/����-k ����t��g�s"���Ҋ���x��4e%��$�0��00�0&� =c>&"C�!ӳ�\Ê��lM��ZF�ur�x��� &\��>S���O�u�)�{��3~b"`VҐ�У �%�`#��C��FaH��!����ԅ�5�54mt��n���"ރ�Ŕ�6ǆG�o}��k}}0�ذ��YF�,��L�z�� �A`�9`�r�jmR禖�R�x{��?a��S������&�a~���+��Ď����$��J)d�0!�@ĀR8 @B�lu�546:�N/���Nb&x\���	�w��Ƕ�Rq�
22bQ�ɲ���CdP�C��P �ڇY������ll5k6�VX�F�?�a��@�K7>m�kM����SqÆ���KL��hh��������v�?���Q�DKۤ��a?}�/�%���T���(4tt�ͬ�j���b;�޽�<�$q��:o�s���v������I-n�Q\pd��ik���=;��k��7a��9�m�I��׷U=���0o�0q$���$��=Xӛ��4f�����Q�v�dɖ���%�E��Nګ��w���<��8l��aB�d��Q�!!-��MsL�p���TV��;)�{��n�����W�X��x����){��"`\��>��ZO������3����BFZH`�_8�u4ӿ���i5�T�;n;OAB�+l�{����]/z����~�0��v�6<pl{��=�	}�r\{f/nAQ\�3���w;���ɺ�n������� {��Q���=k/{�rו;�qn{ۍu􏜙4����F�' !!"!���cZ��7�cU�Y��i�AX������ �r]; ��]��Е�����1���q�_yZ[��K1gv���>s�5�+&�m+C##���:@��Mf��,���uS�V�Pkf��
݊k'�V�v[k(�u����[�i�PV����E��i��g����1Ǩ��l�5ǉ1+�)�R��49 ��O0�F��bkԲ��f7�uB7�!竢b;����)�f�/��N��������ܯ�σ zf�֩����ݾ�8L�}�����Ŷe�R��*���2=,����\�+h�f[�Sl+�+���wb�ғzB'�7�G.�������G��i���N����FֽB��O4�|mN�� ΄̓ǔk�k�X���- l{���Nz���.�V��{��I'=��7ູr�R�us��V��� �Uq^�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://72rrscgkluu"
path="res://.godot/imported/MatrixVisualisation.512x512.png-b94c5eddbbb07f7622405dd746d6bb8e.ctex"
metadata={
"vram_texture": false
}
 �c��N���tGST2   �   �      ����               � �        ,  RIFF$  WEBPVP8L  /��,͘i�6�f����Ū��W�l�l$A���)�@���6��p��s Fm#I
����n?B��q�8�ۆ8����E�=4a�9����B�/�@�����H�p�@���ϑ�U�f�; d�� &S8�� ��2\�.��L^��F2'v�Qwǵ&bضmf���Zܶ�$�NMO����;�Kv�mk��RHV�p���033��ޠx�2S�`<��m�HR��{��7���Om�m�~���H2�CNS�۝��dfZ��o�\�E���(�\H�$�f���&�I-a��m��6����}b33̣3�:��f�0H�%G��ɶU۶m�S�s��m'��Bi3�^s8pI�\��u��9�m��27z#r���_�	��=x-x!��^�Rw}v��R�܋Í%Ƕ���X����	�ԉƭ��p�E��$I�D���;���/��ڶ������$���b������%�to� � �� ��ع�,���%��hD"(��&���x�w�����������w{���m۽  ���͍�oN�N�9�"F�P ���¡��7��A	c���6���À��� ��6�n���Yz�cZЏ�F�c�:wO��ήҲ�"��~ĳ��}t�;`�ѯ�w��v��B4��\��<;�E eyL˫�o7�-�n'��w7��rs�jP�~0����:)ZB�@� av��;�_^�{��޵��u��#F�t���-����"� �((�h����  Ԣw��������qgU}� }�wW�w�>}?����]DTUU�:R#���*Դ1�4�JD  BD�[5O_�<�ww*ԅ�o��ѹ��F��)�Ek4UT��EP
2���n���2i������E�=۾Y�Y���|��M���r�n�I5ESTF!�  PcD��Rmc�7��@�M����o<V��n��m�۶{�߶�g�`"��֭�Ѫh��RA@��Q��d�VU��V[[���^ue�C��۽�oǿ}��+�BG�F[E�����j҈:�zl���5At��^�f��uRT��FSEP,���iK������/�-���m�d��g��I5F[E� �h��H
 !Zrg��f��&�ad��e������)Ƌ� �V�/����,#�]Sk遌�MY���h�JA�Tm�� ����q`e�� ��D��R� ��C����{��4�( Q5UP@�h��@��i�yv���_�I�eUE���H1�r�-�{��u��E�(!A4��eFЉZ ��PD]T"�ԡ��`!�H�A@�hDf0J@!M;��4��N:ʸ:} ��G�(�nD���c$ ��� ����GCu����˭i#S.bV3s�1v��
���>����$'���6����"�-R�)؏�#Q8%�Bפ��Ժ`�U�jh���t�
 �,�˺����b���ր:�&B\iѷѾ'��ih�ݕOҴ6nNi9vǹ(Ӫ̷zZj�N� o'
\���<3R� iYg�u�B%��N������ẽ�
�*a��Ekס.��?ϗ�r�`^9����um5-ƶ��������T�r�w}�������8�8����*������{���A�D�$�����l��%S�v��SP8�aWկ���O���I��H��Y���KNL�Ϧ�*%��-���ieok.\�p�O�����&-���qTtf唯�E��ObB�&$:a�c�����X"�\l�]EW\8��\�g�"LF"K \lY,.#W��s�*:���ه˅$lM	W��HW>�\��;S�� ��� og[&\�ĕb��v��Ť��4[E��$}*��)K�l�S��B'Ϊ�,����~J
Q��nL�"u�;k�&�R�RL���\;=��ڥT$��nk��!�l�B�dG��!kQ3��?�%���i�k<�wޝ݀�I2�H��rCx"�@��[�^&gv8N+b�r�6wCӒ�G����_#d��n�;�p߃������b�e-�q��.ƹ����.�n�ҥ�'�Y���Y�J�*�[��F4�j�Z��U8A��6��Q5F$u^L�9Iq ��]�vi.P�Pj5d�1d ����o��5���j���*x��~77�+�mp�N�W� I�{��^��4j��õ�z[Q��=�����}۪��ر�ۻަ ހ(��}{�<��������R*O���lc{c�noݥD�W����ٽ}M	W�c����� ~u����"�R��9!h0Z;k�v�殻ת���p۠	Q����"j��j ���C�uom+t��(�M��y*iȀP���ۃ5Xc�
"	�:K&�W�t��?�"����#U?z��MH���bk��
N��m�&�]�ԑ&m����c[�W%*Pa��]�_}������n���Xg*�柮���?��s��1-P���������ٺL����i��]|n����rRgYT�-^4�����K/�xU�ANUw����K/����9�4&U�<��;��f/+���y�O��'˧{��w�f�B�.�"����UI<�d�w����w�('�y���s��W���������X�U��/8���?7wRX���%��UA�(y���6��KU`�˼���������]���������,x�ۿ�S�ݷ�f�z���|��I��M�&�<������j4�e��\|GLE�w���dP��s�~�}�a�|⛝~y溂/�ss�P�q�KO�}|�K�)wݛt�/!�i(a�i���O׸.�H6�����>1��<�-�g�P�Pj�m����S��w$��<������׿e�,��f��M�_m��Ӻ�>�����n���������^����F��΍�׷����ZW���b�U�?�_��o��G���ܸj�y��6�׾)8�ւ��uG����6�/��Q�;���/�_��u[n�������U���"�l���/��&\C4��5���꣪
�����}�%���S�����U�^U�tS��6���_3xR�fE���y�Ԉ��r�����X�W|ޝ�y1-���]�uo���6��'7�;����W�����>�=�N�y��݄m� B$ЭݽU�L��'�L^տ q���1�t�%L�!��7��}��˶_ֽ)J�^PG�L�G���}�lg|�}�g:d
hX��<ܽ˘��Nmm>e׸�{_Ҿ���Q�/�/Vy	��]��p,@����y)�l��F�=�qE�L�/�~��T���Cb  `�_����� Եx�F���Wm�(� �I��[�\kb8�_�
�0��'��Q�%G�گ~�?�A�����w����o�~D���\�����c|��UG�9�+�{���=4 �݆���-�e�G�WQG�#��>�k��Ϻou���?i\׹��֪]�{��7M^��gM^v�u�ߨ]���k���R~����pM�_�ݟ�sȪ��y5�|��(22`9�?�c]�S��OlLp��	�V��_��h� @�΍�_�q�Z��=.8��z�֌ 0Oy�� T;����(� ��eY_f�X�q�K2kyGݛԩ+[�{�w��RW�J9b>�����	w� �_�&u��\ ֳ,�%2���Z�ԑ�7�����72���b��)%����&���@�C��qADV�T�.�\k��Be�A�p��D��  Qn�a�!,*��-&�v�;�r��w�<��c�a��wnw嚗Rn��- �ڍWs�E�I��a���no/�����l�+K���V�W��o���s�رve���Cߛ�_����g����u^=B��ױ	�����*�y�U�C�:����_�w������[����_�~�u<���Rf��O����̮=������v���29��F�9����< ��S��/�����X��ޯ�������d;T�����;�Gs�o���������K�XC���&Vr���y5�r��;s{�_�,��~���W���{���ʵ���Ǉ��o������n���ܫ�o`؟X�?�n��ֻI���Z^r�ڭ�w�z��I �\�'�f`�\��ӾwW���/�����}�랿vqs�;�:�?���?����/?���o��Ľ��t3�O����m�����v���䉋G�����k|�{��������~���%�*�Q�/���|����=��o~�o|��W7��L�������~��w��/��7�/�nFZG����?���_��}������u����{�~g�n��3�Ѽ%��9�g�׏Ϋ�dy�����q�Ooy!��S��ڭ·�|�w������(��e�}�]���Y'�s{IO���m���n�A�C�=�������t~ [s{:��P	G�ɸ�m�wV�%�� ;8�+Y�u<}�}1��.����Օ�!*�eqD�HJ�����'6>Ը�p80��Y]��ϳ<;6�8U �uX_�M�m��+
A�37��G9��ʮfj�qH�cj*��B\s^�өs^��'��a0;��p��2��'�q�j��E}m�K����S�Ӵf�r��N �l�a�
�'�]��唣����w0�ǧq~!zNVj��s�}6���2��s^�����N�V�E���Q^}�1�����<��E��_s��D��F�~��ּޮ�u3=q���8��]��#�[����$^�ڢ	�xIR'EX���۰?�"i]��q;'���q�s���!LD�DDC4���׃R,�d|�{'����eϳ��e�R�e�;W�+7��͹�-�UI�Ȓ��&�X4�%�!����G���Gr��o��WT���t��~�qa��ki�*�ŉ���I�,9��ʡ�թ���/_�|��K� �� �����(�`���֔p��b;�ϖ�-+g&g�'�u�@X��x���$R�Đ�Ȓ����o?��G�ŵ8�JQ
�"X��r�8�m Ac��)���uG5��ܡ��2�p\\ܲî������/�{~��dQP�v�P�C�A@�lmA�����v����N��q���!��hw_�����OX���2#�dg~����<N�8�����)w�@��C���J��J����_2Ob�G�����)�$�}1Eʳmv`%�d9��f��$��!iILYx����я�{~�u����Mw`�,�B�G�P��s
E{���x��1V��@N���O�sR&9d�����?;3�ҤI��&�ݥIca�Uf���$S�u��.&��#Ym��e�c��"|�nf��NN�q8������T!�L@�U��R�λ3��>T�|�3�B'*G4�vnL2�|`y8�b@s�tDae��)X� �5_�M�IM��6���J C�s�Q�2��s�)O�x�V��@�$�LR:*��^�i�������J|��*KvO
 �ȑ�ϸ=�����0�����2y:*���R�@�8�0��'+c٧@����;={z<���ً��2�.��  �,��,�B� `���(��������(�Y�d.�0-� p�YI�����c�/���'�L�LX+}y-����?�u�VS����l5h�
8b%e]6��g��F�j��}�$2��|dI[}��d$2�Y��?� �T����i�/�)�2�2s�8���Ŕ��$��s�d*)So֚[�$ ��
[���\����=|E��o�����&�4QBj��D�
�_|� ����)[��O��_�7fg����4_�/���ï��  `��b�ba�bxcV�A]L]��]���{ ?����Ѓ��� 	ABd��.#$AB2�F�գ�i�z5P���= Y§��������~�(9[�w�ޞ�/?c��z c��^R��O�ų�=��5Y�]��)�y��ɢ.�|�/�?����8�M�8�$�5:3q3:� 5 ���N~�1�Q���n��#K��3�ČV�FΊ1#1�߇���7�g�𮖅`�E	(>�u�g~��H�+�͂��Wϻ�����=J_O_ϻ�]��ߏ
x�V_��a��;7ۋ�}�<ʿx�4?���Z�[�]�n���u�nc����u�-�l�B]k�7�ߨ� YD	�]�@	�t�p_K�L4�A��h���z;M��j����bꂺ����?�;���m<y��s?�{��a{�9bFΊF�jb�,����I4�R1d�����Ҕ�@��[]7�O���b���ҏ�9�G6l�ׯ�Λ��6~�g��_Ɵ�yaj�@Ge4bgm������[$g�� H&ģ	(G��lO��D(duv�@YRg�D͝G%X2~�Ҁ&�w-yV蜼e;P����jS~�dl�խg[��r�Zּ�eK��j�.����k1&iY@	Ӷ�\�R�D_����Yf�$��~��؆�iP	�u�uZ(g E�ڴi[�<��-�vf���#�(o���n�h�$��4BD*�e�6��s6�ԁ���n�`J�4<,q\�k߻�5P�<�
�ע��%(�g�2o}m�բ,��H��h���HK�����n"�A��V����ղ�".W�BԬC�5���0*�H���LD"C"�b!�=_&�����@�2!E`5�[M�47Z�&VX���h-{�a�����)!K�GKˏ�CI�v
���d��a0a	+\��JEi�ЖOd��
����'�4�gj�@G "� �;l�8��Ld����R�B���TX+`tIr9A� D&J�%:i��ɞ��˕�3��g�<&��P� ��- LA�(�*p���ŕ�D&2�� c��T�g�@iE��#4 �)���4SeG21���&4��H�H4� c�B�v���6*#F�N0�OLa�.F��*�"B1�[h�=1EӸՒ"��$R�(�?�yg�s�� D%no�T	73x0hH2�e��e���<������( �4'�#�Og�P{���vv�0}�Ť1j�ە@�S�( �r�Vo��
�ز�B^!�qc����6�Z5 ���"��l`y����t� ������h��U�*���������7�-�wN�ۭVŤQUQ�X��� rIr�9�*  ��v���j�5D Ŵ��R�:+<h�"?� Dۢ�--@4f�CDw��;��Vc��T�VQ�F�5������3�M�μr ��~���~k�<� b H��Q�$B�gg"�+s�U����յ|ߦ��A�3�r��s�}���"��IW_P��T)�pB��R	@J*�S����]�:bKW��� L�1إq�����l����c=DtDU�fQ��Ҏ J��*S:�T8!;�Gl���*��:�����������jk�����"�� �(���J��@�چ ������������G�5��pY�����k���]O��B��-��E�l��Z�o�W�x���������� _xՕ��kr�R̝�,# A��#��hK��ni��l�ktx�ч���k��!�-���fd�k*��~�̡"����ͱ���������`.���-}�����ɮ�'s�Ф�Mg�!�:d�� R�� la.��t�}�V��6m@e�u��߃�gڏ>l��k�����-�qh�n��w/fFЉF4�Q)��am�G�y:խ��+ `�e� �5��   ����>P�F��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://duaqum1a7l5w1"
path="res://.godot/imported/MatrixVisualisation.apple-touch-icon.png-4bc7f3c8658efb908b05023d13b06e27.ctex"
metadata={
"vram_texture": false
}
 :���)�5y���n\GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ {��e��i@�D[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b3asi6funat8s"
path="res://.godot/imported/MatrixVisualisation.icon.png-55d51191e12d68b5b1d573365b4645c1.ctex"
metadata={
"vram_texture": false
}
 �-�x��^y{"background_color":"#000000","display":"standalone","icons":[{"sizes":"144x144","src":"MatrixVisualisation.144x144.png","type":"image/png"},{"sizes":"180x180","src":"MatrixVisualisation.180x180.png","type":"image/png"},{"sizes":"512x512","src":"MatrixVisualisation.512x512.png","type":"image/png"}],"name":"MatrixVisualisation","orientation":"any","start_url":"./MatrixVisualisation.html"}�d��YXmi�[GST2      X     ����                X       �,  RIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|� b��`+1a�[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://dpbgviuye3uu2"
path="res://.godot/imported/MatrixVisualisation.png-8f582a2572b2b06e36f18dcce49b4a55.ctex"
metadata={
"vram_texture": false
}
 extends Node

enum IterationScheme {XYZ, YXZ, ZYX}
@export var iterationScheme: IterationScheme
@export var cube : CubeCreator

var width: int
var height: int
var depth: int

var currentId = 0
var maxId = 0
var timer: Timer

func _ready():
	width = 5
	height = 5
	depth = 5
	
	maxId = width * height * depth

	timer = Timer.new()
	timer.autostart = true
	timer.wait_time = 0.25
	add_child(timer)
	timer.timeout.connect(onTimeout)

func onTimeout():
	var pos = getPosition(currentId)
	cube.getCube(pos.x, pos.y, pos.z).material = cube.normalMaterial
	print("currentId", currentId)
	
	currentId = 1 + currentId
	if currentId == maxId:
		timer.stop()
 
func getPosition(id: int):
	var vdepth = id / (width*height)
	var vheight = (id - width*height*vdepth) / height
	var vwidth = (id - width*height * vdepth - height*vheight)
		
	if iterationScheme == IterationScheme.XYZ:
		return Vector3(vwidth, vheight, vdepth)
	if iterationScheme == IterationScheme.YXZ:
		return Vector3(vheight, vwidth, vdepth)
	if iterationScheme == IterationScheme.ZYX:
		return Vector3(vdepth, vheight, vwidth)
�q�class_name FreeLookCamera extends Camera3D

# Modifier keys' speed multiplier
const SHIFT_MULTIPLIER = 2.5
const ALT_MULTIPLIER = 1.0 / SHIFT_MULTIPLIER


@export_range(0.0, 1.0) var sensitivity: float = 0.25

# Mouse state
var _mouse_position = Vector2(0.0, 0.0)
var _total_pitch = 0.0

# Movement state
var _direction = Vector3(0.0, 0.0, 0.0)
var _velocity = Vector3(0.0, 0.0, 0.0)
var _acceleration = 30
var _deceleration = -10
var _vel_multiplier = 4

# Keyboard state
var _w = false
var _s = false
var _a = false
var _d = false
var _q = false
var _e = false
var _shift = false
var _alt = false

func _input(event):
	# Receives mouse motion
	if event is InputEventMouseMotion:
		_mouse_position = event.relative
	
	# Receives mouse button input
	if event is InputEventMouseButton:
		match event.button_index:
			MOUSE_BUTTON_RIGHT: # Only allows rotation if right click down
				Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED if event.pressed else Input.MOUSE_MODE_VISIBLE)
			MOUSE_BUTTON_WHEEL_UP: # Increases max velocity
				_vel_multiplier = clamp(_vel_multiplier * 1.1, 0.2, 20)
			MOUSE_BUTTON_WHEEL_DOWN: # Decereases max velocity
				_vel_multiplier = clamp(_vel_multiplier / 1.1, 0.2, 20)

	# Receives key input
	if event is InputEventKey:
		match event.keycode:
			KEY_W:
				_w = event.pressed
			KEY_S:
				_s = event.pressed
			KEY_A:
				_a = event.pressed
			KEY_D:
				_d = event.pressed
			KEY_Q:
				_q = event.pressed
			KEY_E:
				_e = event.pressed
			KEY_SHIFT:
				_shift = event.pressed
			KEY_ALT:
				_alt = event.pressed

# Updates mouselook and movement every frame
func _process(delta):
	_update_mouselook()
	_update_movement(delta)

# Updates camera movement
func _update_movement(delta):
	# Computes desired direction from key states
	_direction = Vector3(
		(_d as float) - (_a as float), 
		(_e as float) - (_q as float),
		(_s as float) - (_w as float)
	)
	
	# Computes the change in velocity due to desired direction and "drag"
	# The "drag" is a constant acceleration on the camera to bring it's velocity to 0
	var offset = _direction.normalized() * _acceleration * _vel_multiplier * delta \
		+ _velocity.normalized() * _deceleration * _vel_multiplier * delta
	
	# Compute modifiers' speed multiplier
	var speed_multi = 1
	if _shift: speed_multi *= SHIFT_MULTIPLIER
	if _alt: speed_multi *= ALT_MULTIPLIER
	
	# Checks if we should bother translating the camera
	if _direction == Vector3.ZERO and offset.length_squared() > _velocity.length_squared():
		# Sets the velocity to 0 to prevent jittering due to imperfect deceleration
		_velocity = Vector3.ZERO
	else:
		# Clamps speed to stay within maximum value (_vel_multiplier)
		_velocity.x = clamp(_velocity.x + offset.x, -_vel_multiplier, _vel_multiplier)
		_velocity.y = clamp(_velocity.y + offset.y, -_vel_multiplier, _vel_multiplier)
		_velocity.z = clamp(_velocity.z + offset.z, -_vel_multiplier, _vel_multiplier)
	
		translate(_velocity * delta * speed_multi)

# Updates mouse look 
func _update_mouselook():
	# Only rotates mouse if the mouse is captured
	if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
		_mouse_position *= sensitivity
		var yaw = _mouse_position.x
		var pitch = _mouse_position.y
		_mouse_position = Vector2(0, 0)
		
		# Prevents looking up/down too far
		pitch = clamp(pitch, -90 - _total_pitch, 90 - _total_pitch)
		_total_pitch += pitch
	
		rotate_y(deg_to_rad(-yaw))
		rotate_object_local(Vector3(1,0,0), deg_to_rad(-pitch))
�extends OptionButton


# Called when the node enters the scene tree for the first time.
func _ready():
	add_item("XYZ")
	add_item("ZYX")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
(�x���A�O��jclass_name CommandParserAndExecutor extends Node

@export_multiline  var commands:String
@export var styleManager: StyleManager

var cubes = []
var lines = []
var currentLine = 0
var started = false
var waitTime = 0

func _ready():
	parse(commands)
	started = true

func start():
	started = true

func parse(txt):
	started = false
	currentLine = 0
	lines = txt.split("\n")

func parseCommand(cmd):
	if cmd[0] == "create":
		createCube(cmd[1], cmd[2], cmd[3], cmd[4], cmd[6])	
		
	if cmd[0] == "changeBlockStyle":
		changeBlockStyle(cmd[1], int(cmd[2]), int(cmd[3]), int(cmd[4]), cmd[6])
		
	if cmd[0] == "wait":
		wait(cmd[1])
		
	if cmd[0] == "setAllCubesStyle":
		setAllCubesStyle(cmd[1], cmd[2])
		
	if cmd[0] == "setPosition":
		setPosition(cmd[1], float(cmd[2]), float(cmd[3]), float(cmd[4]))

	if cmd[0] == "setRotation":
		setRotation(cmd[1], float(cmd[2]),float(cmd[3]),float(cmd[4]))

	if cmd[0] == "rotate":
		rotate(cmd[1], float(cmd[2]),float(cmd[3]),float(cmd[4]))
	
	if cmd[0] == "clearCubes":
		clearCubes(cmd)
		
func createCube(name, x, y,z, styleName):
	var cube = CubeCreator.new()
	cube.width = x
	cube.height = y
	cube.depth = z
	cube.generate()
	
	var style = styleManager.getStyle(styleName)
	if style != null:
		cube.hiddenMaterial = style.hidden
		cube.normalMaterial = style.normal
		cube.selectedMaterial = style.selected
	
	add_child(cube)
	cubes.append({"name": name, "cube": cube})
	
func wait(howLong):
	waitTime = waitTime + float(howLong)

func changeBlockStyle(cubeName, x, y, z, newStyle):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("changeBlockStyle unable to find cube with name", cubeName)
		return
		
	if newStyle == "selected":
		cube.getCube(x,y,z).material = cube.selectedMaterial
	if newStyle == "normal":
		cube.getCube(x,y,z).material = cube.normalMaterial
	if newStyle == "hidden":
		cube.getCube(x,y,z).material = cube.hiddenMaterial
		
	print("changeBlockStyle of ", cubeName," ", x," ", y, " ",z, " ", " to ", newStyle)

func getCubeWithName(cubeName):
	for entry in cubes:
		if entry['name'] == cubeName:
			return entry['cube']
	
	return null

func setAllCubesStyle(cubeName, newStyle):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("setAllCubesStyle unable to find cube with name", cubeName)
		return
		
	if newStyle == "selected":
		cube.setAllBlocksStyleTo(cube.selectedMaterial)
	if newStyle == "normal":
		cube.setAllBlocksStyleTo(cube.normalMaterial)
	if newStyle == "hidden":
		cube.setAllBlocksStyleTo(cube.hiddenMaterial)

func setPosition(cubeName, x,y,z):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("setPosition unable to find cube with name", cubeName)
		return
		
	cube.global_position = Vector3(x,y,z)
	
func setRotation(cubeName, x,y,z):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("setRotationX unable to find cube with name", cubeName)
		return
		
	cube.rotation = Vector3(x,y,z)
	
func rotate(cubeName, x,y,z):
	var cube = getCubeWithName(cubeName)
	if cube == null:
		print("setRotationX unable to find cube with name", cubeName)
		return
		
	cube.set_rotation_degrees(Vector3(x,y,z))
	
func clearCubes(cmds):
	for cube in cubes:
		cube['cube'].queue_free()
	
	cubes = []
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if started == false:
		return true
	
	if waitTime > 0:
		waitTime = waitTime - delta
	else:
		waitTime = 0
		parseCommand(lines[currentLine].split(" "))
		currentLine = currentLine + 1
		
		if currentLine >= lines.size():
			started = false
			print("Stopped executing script")
		
	return true
�����%��wY�]class_name CubeCreator extends Node3D

@export var width : int
@export var height : int
@export var depth : int

@export var space : float = 0.1

@export var normalMaterial: StandardMaterial3D
@export var hiddenMaterial: StandardMaterial3D
@export var selectedMaterial: StandardMaterial3D

func _ready():
	generate()

func clear():
	for child in get_children():
		remove_child(child)

func generate():
	for z in range(depth):
		for y in range(height):
			for x in range(width):
				var blockInstance = CSGBox3D.new()
				blockInstance.position = Vector3(x * (1 + space),y * (1+space),z * (1+space))
				blockInstance.material = hiddenMaterial
				add_child(blockInstance)

func getCube(x,y,z):
	return get_children()[x + y *width + z *width*height]
	
func setAllBlocksStyleTo(material):
	for child in get_children():
		child.material = material
��RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_klnht �          PackedScene          	         names "      	   CubeNode 	   CSGBox3D    	   variants              node_count             nodes        ��������       ����              conn_count              conns               node_paths              editable_instances              version             RSRC�A����GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ ����8/Է*��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://p70hfuponskv"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
 GST2   �   �      ����               � �        ,  RIFF$  WEBPVP8L  /��,͘i�6�f����Ū��W�l�l$A���)�@���6��p��s Fm#I
����n?B��q�8�ۆ8����E�=4a�9����B�/�@�����H�p�@���ϑ�U�f�; d�� &S8�� ��2\�.��L^��F2'v�Qwǵ&bضmf���Zܶ�$�NMO����;�Kv�mk��RHV�p���033��ޠx�2S�`<��m�HR��{��7���Om�m�~���H2�CNS�۝��dfZ��o�\�E���(�\H�$�f���&�I-a��m��6����}b33̣3�:��f�0H�%G��ɶU۶m�S�s��m'��Bi3�^s8pI�\��u��9�m��27z#r���_�	��=x-x!��^�Rw}v��R�܋Í%Ƕ���X����	�ԉƭ��p�E��$I�D���;���/��ڶ������$���b������%�to� � �� ��ع�,���%��hD"(��&���x�w�����������w{���m۽  ���͍�oN�N�9�"F�P ���¡��7��A	c���6���À��� ��6�n���Yz�cZЏ�F�c�:wO��ήҲ�"��~ĳ��}t�;`�ѯ�w��v��B4��\��<;�E eyL˫�o7�-�n'��w7��rs�jP�~0����:)ZB�@� av��;�_^�{��޵��u��#F�t���-����"� �((�h����  Ԣw��������qgU}� }�wW�w�>}?����]DTUU�:R#���*Դ1�4�JD  BD�[5O_�<�ww*ԅ�o��ѹ��F��)�Ek4UT��EP
2���n���2i������E�=۾Y�Y���|��M���r�n�I5ESTF!�  PcD��Rmc�7��@�M����o<V��n��m�۶{�߶�g�`"��֭�Ѫh��RA@��Q��d�VU��V[[���^ue�C��۽�oǿ}��+�BG�F[E�����j҈:�zl���5At��^�f��uRT��FSEP,���iK������/�-���m�d��g��I5F[E� �h��H
 !Zrg��f��&�ad��e������)Ƌ� �V�/����,#�]Sk遌�MY���h�JA�Tm�� ����q`e�� ��D��R� ��C����{��4�( Q5UP@�h��@��i�yv���_�I�eUE���H1�r�-�{��u��E�(!A4��eFЉZ ��PD]T"�ԡ��`!�H�A@�hDf0J@!M;��4��N:ʸ:} ��G�(�nD���c$ ��� ����GCu����˭i#S.bV3s�1v��
���>����$'���6����"�-R�)؏�#Q8%�Bפ��Ժ`�U�jh���t�
 �,�˺����b���ր:�&B\iѷѾ'��ih�ݕOҴ6nNi9vǹ(Ӫ̷zZj�N� o'
\���<3R� iYg�u�B%��N������ẽ�
�*a��Ekס.��?ϗ�r�`^9����um5-ƶ��������T�r�w}�������8�8����*������{���A�D�$�����l��%S�v��SP8�aWկ���O���I��H��Y���KNL�Ϧ�*%��-���ieok.\�p�O�����&-���qTtf唯�E��ObB�&$:a�c�����X"�\l�]EW\8��\�g�"LF"K \lY,.#W��s�*:���ه˅$lM	W��HW>�\��;S�� ��� og[&\�ĕb��v��Ť��4[E��$}*��)K�l�S��B'Ϊ�,����~J
Q��nL�"u�;k�&�R�RL���\;=��ڥT$��nk��!�l�B�dG��!kQ3��?�%���i�k<�wޝ݀�I2�H��rCx"�@��[�^&gv8N+b�r�6wCӒ�G����_#d��n�;�p߃������b�e-�q��.ƹ����.�n�ҥ�'�Y���Y�J�*�[��F4�j�Z��U8A��6��Q5F$u^L�9Iq ��]�vi.P�Pj5d�1d ����o��5���j���*x��~77�+�mp�N�W� I�{��^��4j��õ�z[Q��=�����}۪��ر�ۻަ ހ(��}{�<��������R*O���lc{c�noݥD�W����ٽ}M	W�c����� ~u����"�R��9!h0Z;k�v�殻ת���p۠	Q����"j��j ���C�uom+t��(�M��y*iȀP���ۃ5Xc�
"	�:K&�W�t��?�"����#U?z��MH���bk��
N��m�&�]�ԑ&m����c[�W%*Pa��]�_}������n���Xg*�柮���?��s��1-P���������ٺL����i��]|n����rRgYT�-^4�����K/�xU�ANUw����K/����9�4&U�<��;��f/+���y�O��'˧{��w�f�B�.�"����UI<�d�w����w�('�y���s��W���������X�U��/8���?7wRX���%��UA�(y���6��KU`�˼���������]���������,x�ۿ�S�ݷ�f�z���|��I��M�&�<������j4�e��\|GLE�w���dP��s�~�}�a�|⛝~y溂/�ss�P�q�KO�}|�K�)wݛt�/!�i(a�i���O׸.�H6�����>1��<�-�g�P�Pj�m����S��w$��<������׿e�,��f��M�_m��Ӻ�>�����n���������^����F��΍�׷����ZW���b�U�?�_��o��G���ܸj�y��6�׾)8�ւ��uG����6�/��Q�;���/�_��u[n�������U���"�l���/��&\C4��5���꣪
�����}�%���S�����U�^U�tS��6���_3xR�fE���y�Ԉ��r�����X�W|ޝ�y1-���]�uo���6��'7�;����W�����>�=�N�y��݄m� B$ЭݽU�L��'�L^տ q���1�t�%L�!��7��}��˶_ֽ)J�^PG�L�G���}�lg|�}�g:d
hX��<ܽ˘��Nmm>e׸�{_Ҿ���Q�/�/Vy	��]��p,@����y)�l��F�=�qE�L�/�~��T���Cb  `�_����� Եx�F���Wm�(� �I��[�\kb8�_�
�0��'��Q�%G�گ~�?�A�����w����o�~D���\�����c|��UG�9�+�{���=4 �݆���-�e�G�WQG�#��>�k��Ϻou���?i\׹��֪]�{��7M^��gM^v�u�ߨ]���k���R~����pM�_�ݟ�sȪ��y5�|��(22`9�?�c]�S��OlLp��	�V��_��h� @�΍�_�q�Z��=.8��z�֌ 0Oy�� T;����(� ��eY_f�X�q�K2kyGݛԩ+[�{�w��RW�J9b>�����	w� �_�&u��\ ֳ,�%2���Z�ԑ�7�����72���b��)%����&���@�C��qADV�T�.�\k��Be�A�p��D��  Qn�a�!,*��-&�v�;�r��w�<��c�a��wnw嚗Rn��- �ڍWs�E�I��a���no/�����l�+K���V�W��o���s�رve���Cߛ�_����g����u^=B��ױ	�����*�y�U�C�:����_�w������[����_�~�u<���Rf��O����̮=������v���29��F�9����< ��S��/�����X��ޯ�������d;T�����;�Gs�o���������K�XC���&Vr���y5�r��;s{�_�,��~���W���{���ʵ���Ǉ��o������n���ܫ�o`؟X�?�n��ֻI���Z^r�ڭ�w�z��I �\�'�f`�\��ӾwW���/�����}�랿vqs�;�:�?���?����/?���o��Ľ��t3�O����m�����v���䉋G�����k|�{��������~���%�*�Q�/���|����=��o~�o|��W7��L�������~��w��/��7�/�nFZG����?���_��}������u����{�~g�n��3�Ѽ%��9�g�׏Ϋ�dy�����q�Ooy!��S��ڭ·�|�w������(��e�}�]���Y'�s{IO���m���n�A�C�=�������t~ [s{:��P	G�ɸ�m�wV�%�� ;8�+Y�u<}�}1��.����Օ�!*�eqD�HJ�����'6>Ը�p80��Y]��ϳ<;6�8U �uX_�M�m��+
A�37��G9��ʮfj�qH�cj*��B\s^�өs^��'��a0;��p��2��'�q�j��E}m�K����S�Ӵf�r��N �l�a�
�'�]��唣����w0�ǧq~!zNVj��s�}6���2��s^�����N�V�E���Q^}�1�����<��E��_s��D��F�~��ּޮ�u3=q���8��]��#�[����$^�ڢ	�xIR'EX���۰?�"i]��q;'���q�s���!LD�DDC4���׃R,�d|�{'����eϳ��e�R�e�;W�+7��͹�-�UI�Ȓ��&�X4�%�!����G���Gr��o��WT���t��~�qa��ki�*�ŉ���I�,9��ʡ�թ���/_�|��K� �� �����(�`���֔p��b;�ϖ�-+g&g�'�u�@X��x���$R�Đ�Ȓ����o?��G�ŵ8�JQ
�"X��r�8�m Ac��)���uG5��ܡ��2�p\\ܲî������/�{~��dQP�v�P�C�A@�lmA�����v����N��q���!��hw_�����OX���2#�dg~����<N�8�����)w�@��C���J��J����_2Ob�G�����)�$�}1Eʳmv`%�d9��f��$��!iILYx����я�{~�u����Mw`�,�B�G�P��s
E{���x��1V��@N���O�sR&9d�����?;3�ҤI��&�ݥIca�Uf���$S�u��.&��#Ym��e�c��"|�nf��NN�q8������T!�L@�U��R�λ3��>T�|�3�B'*G4�vnL2�|`y8�b@s�tDae��)X� �5_�M�IM��6���J C�s�Q�2��s�)O�x�V��@�$�LR:*��^�i�������J|��*KvO
 �ȑ�ϸ=�����0�����2y:*���R�@�8�0��'+c٧@����;={z<���ً��2�.��  �,��,�B� `���(��������(�Y�d.�0-� p�YI�����c�/���'�L�LX+}y-����?�u�VS����l5h�
8b%e]6��g��F�j��}�$2��|dI[}��d$2�Y��?� �T����i�/�)�2�2s�8���Ŕ��$��s�d*)So֚[�$ ��
[���\����=|E��o�����&�4QBj��D�
�_|� ����)[��O��_�7fg����4_�/���ï��  `��b�ba�bxcV�A]L]��]���{ ?����Ѓ��� 	ABd��.#$AB2�F�գ�i�z5P���= Y§��������~�(9[�w�ޞ�/?c��z c��^R��O�ų�=��5Y�]��)�y��ɢ.�|�/�?����8�M�8�$�5:3q3:� 5 ���N~�1�Q���n��#K��3�ČV�FΊ1#1�߇���7�g�𮖅`�E	(>�u�g~��H�+�͂��Wϻ�����=J_O_ϻ�]��ߏ
x�V_��a��;7ۋ�}�<ʿx�4?���Z�[�]�n���u�nc����u�-�l�B]k�7�ߨ� YD	�]�@	�t�p_K�L4�A��h���z;M��j����bꂺ����?�;���m<y��s?�{��a{�9bFΊF�jb�,����I4�R1d�����Ҕ�@��[]7�O���b���ҏ�9�G6l�ׯ�Λ��6~�g��_Ɵ�yaj�@Ge4bgm������[$g�� H&ģ	(G��lO��D(duv�@YRg�D͝G%X2~�Ҁ&�w-yV蜼e;P����jS~�dl�խg[��r�Zּ�eK��j�.����k1&iY@	Ӷ�\�R�D_����Yf�$��~��؆�iP	�u�uZ(g E�ڴi[�<��-�vf���#�(o���n�h�$��4BD*�e�6��s6�ԁ���n�`J�4<,q\�k߻�5P�<�
�ע��%(�g�2o}m�բ,��H��h���HK�����n"�A��V����ղ�".W�BԬC�5���0*�H���LD"C"�b!�=_&�����@�2!E`5�[M�47Z�&VX���h-{�a�����)!K�GKˏ�CI�v
���d��a0a	+\��JEi�ЖOd��
����'�4�gj�@G "� �;l�8��Ld����R�B���TX+`tIr9A� D&J�%:i��ɞ��˕�3��g�<&��P� ��- LA�(�*p���ŕ�D&2�� c��T�g�@iE��#4 �)���4SeG21���&4��H�H4� c�B�v���6*#F�N0�OLa�.F��*�"B1�[h�=1EӸՒ"��$R�(�?�yg�s�� D%no�T	73x0hH2�e��e���<������( �4'�#�Og�P{���vv�0}�Ť1j�ە@�S�( �r�Vo��
�ز�B^!�qc����6�Z5 ���"��l`y����t� ������h��U�*���������7�-�wN�ۭVŤQUQ�X��� rIr�9�*  ��v���j�5D Ŵ��R�:+<h�"?� Dۢ�--@4f�CDw��;��Vc��T�VQ�F�5������3�M�μr ��~���~k�<� b H��Q�$B�gg"�+s�U����յ|ߦ��A�3�r��s�}���"��IW_P��T)�pB��R	@J*�S����]�:bKW��� L�1إq�����l����c=DtDU�fQ��Ҏ J��*S:�T8!;�Gl���*��:�����������jk�����"�� �(���J��@�چ ������������G�5��pY�����k���]O��B��-��E�l��Z�o�W�x���������� _xՕ��kr�R̝�,# A��#��hK��ni��l�ktx�ч���k��!�-���fd�k*��~�̡"����ͱ���������`.���-}�����ɮ�'s�Ф�Mg�!�:d�� R�� la.��t�}�V��6m@e�u��߃�gڏ>l��k�����-�qh�n��w/fFЉF4�Q)��am�G�y:խ��+ `�e� �5��   &�>j�z��*d��[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://481bcnbn68eu"
path="res://.godot/imported/MatrixVisualisation.apple-touch-icon.png-5843fb6752ab519fa374496846a179bd.ctex"
metadata={
"vram_texture": false
}
 GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[ �������[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://drw2det6ggan7"
path="res://.godot/imported/MatrixVisualisation.icon.png-b4f79215d513313603ed699105a7955a.ctex"
metadata={
"vram_texture": false
}
 7����d �7&rGST2      X     ����                X       �,  RIFF�,  WEBPVP8L�,  /Õ�mۆq�����1�Ve���G�N^6۶�'�����L �	���������'�G�n$�V����p����̿���H�9��L߃�E۶c��ۘhd�1�Nc��6���I܁���[�(�#�m�9��'�mۦL���f�����~�=��!i�f��&�"�	Y���,�A����z����I�mmN����#%)Ȩ��b��P
��l"��m'���U�,���FQ�S�m�$�pD��жm�m۶m#�0�F�m�6����$I�3���s�������oI�,I�l���Cn����Bm&�*&sӹEP���|[=Ij[�m۝m��m���l۶m��g{gK�jm���$�vۦ�W=n�  q��I$Ij�	�J�x����U��޽�� I�i[up�m۶m۶m۶m۶m�ټ�47�$)Ι�j�E�|�C?����/�����/�����/�����/�����/�����/�����/�����̸k*�u����j_R�.�ΗԳ�K+�%�=�A�V0#��������3��[ނs$�r�H�9xޱ�	T�:T��iiW��V�`������h@`��w�L�"\�����@|�
a2�T� ��8b����~�z��'`	$� KśϾ�OS��	���;$�^�L����α��b�R鷺�EI%��9  �7� ,0 @Nk�p�Uu��R�����Ω��5p7�T�'`/p����N�گ�
�F%V�9;!�9�)�9��D�h�zo���N`/<T�����֡cv��t�EIL���t  �qw�AX�q �a�VKq���JS��ֱ؁�0F�A�
�L��2�ѾK�I%�}\ �	�*�	1���i.'���e.�c�W��^�?�Hg���Tm�%�o�
oO-  x"6�& `��R^���WU��N��" �?���kG�-$#���B��#���ˋ�銀�z֊�˧(J�'��c  ��� vNmŅZX���OV�5X R�B%an	8b!		e���6�j��k0C�k�*-|�Z  ��I� \���v  ��Qi�+PG�F������E%����o&Ӎ��z���k��;	Uq�E>Yt�����D��z��Q����tɖA�kӥ���|���1:�
v�T��u/Z�����t)�e����[K㡯{1<�;[��xK���f�%���L�"�i�����S'��󔀛�D|<�� ��u�={�����L-ob{��be�s�V�]���"m!��*��,:ifc$T����u@8 	!B}� ���u�J�_  ��!B!�-� _�Y ��	��@�����NV]�̀����I��,|����`)0��p+$cAO�e5�sl������j�l0 vB�X��[a��,�r��ς���Z�,| % ȹ���?;9���N�29@%x�.
k�(B��Y��_  `fB{4��V�_?ZQ��@Z�_?�	,��� � ��2�gH8C9��@���;[�L�kY�W�
*B@� 8f=:;]*LQ��D
��T�f=�` T����t���ʕ�￀�p�f�m@��*.>��OU�rk1e�����5{�w��V!���I[����X3�Ip�~�����rE6�nq�ft��b��f_���J�����XY�+��JI�vo9��x3�x�d�R]�l�\�N��˂��d�'jj<����ne������8��$����p'��X�v����K���~ � �q�V������u/�&PQR�m����=��_�EQ�3���#����K���r  ��J	��qe��@5՗�/# l:�N�r0u���>��ׁd��ie2� ���G'& �`5���s����'����[%9���ۓ�Хމ�\15�ƀ�9C#A#8%��=%�Z%y��Bmy�#�$4�)dA�+��S��N}��Y�%�Q�a�W��?��$�3x $��6��pE<Z�Dq��8���p��$H�< �֡�h�cާ���u�  �"Hj$����E%�@z�@w+$�	��cQ��
1�)��������R9T��v�-  xG�1�?����PO�}Eq�i�p�iJ@Q�=@�ݹ:t�o��{�d`5�����/W^�m��g���B~ h�  ����l  נ�6rߙ�����^�?r���   ���⤖��  �!��#�3\?��/  �ݝRG��\�9;6���}P6������K>��V̒=l��n)��p	 ����0n䯂���}   ���S*	 ��t%ͤ+@�����T�~��s����oL)�J� 0>��W�-  �*N�%x=�8ikfV^���3�,�=�,}�<Z��T�+'��\�;x�Y���=���`}�y�>0����/'ـ�!z9�pQ��v/ֶ�Ǜ����㗬��9r���}��D���ל���	{�y����0&�Q����W��y ����l��.�LVZ��C���*W��v����r���cGk�
^�Ja%k��S���D"j���2���RW/������ض1 ����
.bVW&�gr��U\�+���!���m ;+۞�&�6]�4R�/��Y�L�Ά`"�sl,Y/��x��|&Dv�_
Q*� V�NWYu�%��-�&D�(&��"  Wc��ZS���(�x� ,�!����!�L�AM�E�]}X�!��wB�o��-  �-���16���i���ю�z��� ���B��oB�0������v]���ȓ�����3�� +S�χ�=Q_�����˨�d��|)D>��k ��uȣ���Y[9̂�����! ^�!��r���j0Y+i��΍e(�ț� ���x��
��{��<6 R���پ�b��Y
C����+���������;���a ���,�o��bC�{�?���1 �(��¤ �V�������;�=��I��� ���EI���Z��)D����t=S ��] X��9K�= �.~�K[��Ŋ��,2��� p}>w<n�g h�
�t���R�u�G�1k���!��x���������� �L���|>D�0�Ǣ(Qc�� ����= �ۊ�Z0�^��c �
|�����L�%�d��q���(�WB� ��(	���� �J��8D�0�~$�Dsy�Ѿ!������j�^ ��mOa�8.�qce��s|%Dq~,X�u�������=T	���Q�M�ȣm�Y�%Y+�[�0|"DΞ�j�u�L6�(Qe��qw�V�э���ǂ���!j�K � �:�wQ�dÛ������R�
��C���X�u�`����\"j讀Dq21� �F>B[��[������]@K-���C�e�q�tWP�:W�۞X�z��,��t�p���P��Se����T���{dG��
KA���w�t3t��[ܘ�4^>�5ŉ�^�n�Eq�U��Ӎ��α�v�O6C�
�F%�+8eů��M����hk��w�欹񔈓����C��y訫���J�Is�����Po|��{�Ѿ)+~�W��N,�ů��޽���O��J�_�w��N8����x�?�=X��t�R�BM�8���VSyI5=ݫ�	-�� �ֶ��oV�����G������3��D��aEI��ZI5�݋����t��b��j��G����U���΃�C�������ق�в����b���}s����xkn��`5�����>��M�Ev�-�͇\��|�=� '�<ތ�Ǜ���<O�LM�n.f>Z�,~��>��㷾�����x8���<x�����h}��#g�ж��������d�1xwp�yJO�v�	TV����گ�.�=��N����oK_={?-����@/�~�,��m ��9r.�6K_=�7#�SS����Ao�"�,TW+I��gt���F�;S���QW/�|�$�q#��W�Ƞ(�)H�W�}u�Ry�#���᎞�ͦ�˜QQ�R_��J}�O���w�����F[zjl�dn�`$� =�+cy��x3������U�d�d����v��,&FA&'kF�Y22�1z�W!�����1H�Y0&Ӎ W&^�O�NW�����U����-�|��|&HW������"�q����� ��#�R�$����?�~���� �z'F��I���w�'&����se���l�̂L�����-�P���s��fH�`�M��#H[�`,,s]��T����*Jqã��ł�� )-|yč��G�^J5]���e�hk�l;4�O��� ���[�������.��������������xm�p�w�չ�Y��(s�a�9[0Z�f&^��&�ks�w�s�_F^���2΂d��RU� �s��O0_\읅�,���2t�f�~�'t�p{$`6���WĽU.D"j�=�d��}��}���S["NB�_MxQCA[����\	�6}7Y����K���K6���{���Z۔s�2 �L�b�3��T��ݹ����&'ks����ܓ�ЛϾ�}f��,�Dq&������s��ϼ��{������&'k�����Qw窭�_i�+x�6ڥ��f�{j)���ퟎƍ3ou�R�Y����徙�k����X�Z
m.Y+=Z��m3�L47�j�3o�=�!J
5s���(��A ��t)���N�]68�u< Ƞ��_�im>d ��z(���(��⤶�� �&�ۥ� ��  Vc�8�'��qo9 �t��i�ρdn��Of���O�RQP���h'������P֡���n ���č����k�K@�>����pH>z)-|��B��j���!j:�+������˧��t�������1����.`v�M�k�q#�$���N:�����-M5a10y����(�T��� X5 \�:� ?+�7#�?�*Y+-,s� ~�|\)뀀ap �drn�g��RN�X�er ��@ĕ���;��z��8ɱ�����	�- �
�bKc����kt�U]�䎚���hgu���|�_J{ �`p��o�p�T�U��p���/���Hϑ�H�$X ܬm3���ŉ�U'��뻩t��G9�}�)O������p�΃g���JO���\9�׫�����ڳ�!k����/��9R���^�%��C����T���;ji<�>�KY����;�J��ƶm .P��pT��
@HA��r��98V���b�v���YwaZ>�$oւ?-փ��ʹ|0�.��3���b駁�c��;?8E;���V�B�؀����|%\\s��%����e{o��Z�i�������^���s�Jx������B jh�\ �h�<��V��sh@:���.�ІYl��˂�`3hE.,P�2^����J��+�����p��
�ЊJd��x�*�@�7R��� �"�G="!�� �p����u�o��wV�m�g���~F��?����/�����}~����sо7� ���\,,k�J�T�6������Z�y�rBZ[D�>v�HQ�R��mq�������DD�-6+�V`���J�E�����\� 9!ߑ�`��6���ml�~ZM�Z�ȎV���g���������3?*u3���ctW����YQa�Cb�P�,B5�p0�m�cͺEt�{,��>s9f�^��`OG��]����2�Fk�9_�G�vd��	��)��=�1^Ų�Wl3{�����1��H)�e������9�هZ�]}�b���)b�C��es}�cVi~x���e
Z�)܃��39������C�(�+R����!�j����F�n���<?�p��l�8a�4xOb��������c�8&�UA�|	/l�8�8���3t�6�͏���v���� ����סy�wU��`� =��|M�Y?�'�A��&�@*�c~!�/{��),�>�=xr"	�qlF:��L&���=<5t�h.�#ᣭ���O�z�!�&`A�F�yK=�c<\GZ�� 4HG�0i�F녠uB"���<��c�Jeۈ�3!����O��q萞PiZ&�$M[���(G��e���ؤ���ã��O���5����'�gH~�����=��g�F|8�+�X�4�u���G�2����'��.��5[�OlB��$f4���`��mS�L�,y�t&V�#P�3{ ��763�7N���"��P��I�X��BgV�n�a:$:�FZ���'�7����f������z!�����KA�G��D#������ˑ`ڶs���&� ݱ��4�j��n�� ݷ�~s��F�pD�LE�q+wX;t,�i�y��Y��A�۩`p�m#�x�kS�c��@bVL��w?��C�.|n{.gBP�Tr��v1�T�;"��v����XSS��(4�Ύ�-T�� (C�*>�-
�8��&�;��f;�[Փ���`,�Y�#{�lQ�!��Q��ّ�t9����b��5�#%<0)-%	��yhKx2+���V��Z� �j�˱RQF_�8M���{N]���8�m��ps���L���'��y�Ҍ}��$A`��i��O�r1p0�%��茮�:;�e���K A��qObQI,F�؟�o��A�\�V�����p�g"F���zy�0���9"� �8X�o�v����ߕڄ��E �5�3�J�ص�Ou�SbVis�I���ص�Z���ڒ�X��r�(��w��l��r"�`]�\�B���Ija:�O\���/�*]�þR������|���ʑ@�����W�8f�lA���Xl��촻�K<�dq1+x�*U�;�'�Vnl`"_L�3�B����u�����M���'�!-�<;S�F�܊�bSgq� ���Xt�肦�a��RZ�Y_ި��ZRSGA��-:8����yw_}XW�Z���-k�g.U��|�7P�
&���$˳��+��~?7�k�bQ���g������~�Z�e����H�-p�7S�� 
�w"XK�`K%?�`Tr|p���"��\�a�?�٧ ��'u�cv�&��<LM�Ud��T���Ak��������'+7��XR`��[\�-0���e�AiW]�Dk���$u���0[?�-���L����X�ĚSK-�.%�9=j�3t^���(c�yM-��/�ao����\%�?�б �~���b][
tٵ�<qF�)�
�J�'QZY�����*pB�I4�޸�,������.Т�1���/
t�1-1������E�*��Cl/Ю©f�<,0�S�bf�^���[8Z$��@���kw�M<?�[`��)3)1� �U����:��/pR��XV`XE,/0���d���1>ѫ��i�z��*o�}&R{���$f�JV=5͉Ύ��Rl�/�N4.�U~Cm�N~��HPRS�?G��g�-���qvT{�G _�[ua�;���kco�9�Kw����n����E{d�j��C���,q����Y���cwY<$#�ؤ�m+�LL-�z� �y<{/7���[��X�?�-6(cO ?�XZ�M�������sb�[
�.����j|;d�!0lCIqZ�z�&��~�|7�A���A~��á@�� 417��}t ��,� X�6��lS)6v�G
��I:�).~��8R���#'��߶;9�'���U�$1nC�L��찦3�+b黙u�NJ�����8���X�?5�0��^��[B/+�0�Ur(��J��+Xr�H�����HZm&�#�p	�Y ����*���hM]��m���b�ݢ����G����s��z-�x��������� �J�"���Ћ�g�Ҝ �Aа��?��?6��c�Zx�$�t��{s
-R�E�24�?�{�l�-��1�3S�EJ��v6X]L�B^ ��]N��R�yN��62�����'R�p-�����n2�d�?Th|�h��3X������Rc8&��_,��;T�8�� �hΗv�(7I;�3Obn;��O�!����Lߍ*�E~wU,���n�MN1���Z��Y̖��tY;5�^�<Z�Ǩ�T#�bt�xfA�n�cq����"9GD*�^JL��HJ���4���V�-�܉��4*��u]�[
���,"ҏ�i!�r~L��_�����8 ]j�?x���<k+%w��Bk��=�u�ڤ��>%2Bۃ�Y�n<jBo������Κ�0M~�t>�#b/jZ�}���B��Q��#���6R$v�����k�R$c/:�~���(V�7;)��ߊ[̣0?F��;.�*ݪd������{A`w>~�i=D�c��������Y2�X�q~�r2��8@v=f�?��X��S�"X�j?��@$?�����x�(�k���c7��\�����>A�=fpM?9d?�׻{���)f�.⪝���3�������f,N;"��,N���X��*�"V���"��C��?���(2=���A��1�Ul���h�8Ao(5X�B�X�>S�j��s�!
l����GgGp��>�v;c���V�N1���-��K�S�=6PiN�fNq������,
�3SWx�ei����f'�*�r�rʹ̙�e�7���b�o���>_i��M�_��V�p�r�9��X�$�����B���t5�4#�B(E���3�������`����I�M�e��b6_����{~�f/��@��B��Y����E�4��޲�d�O�$���M�����ݖv�P����TR�oj~��+}��#���"�]1Υ_���nR���œ����^pQ2�7첾b��3�ba�\��uu2�~O�G�����5�^>v������m��?���mC;$eT��C񎋋��V��8�:��
���ʱlt��~e]�cC7dl���.�i����\w����/..F�Q5���œ��`�o���E����E�͛�ٽ-�o�z�"n��/��[�����ͳI���S��Dڢ��V�6��!��esq��AC���ڻ���OMk�y��{7`c0�ٺ���5C5�yiw��`ps�OC��f�X�5oQ�\_*m�f�)稹"���a2$O;�]C�A�;V.���c��iޢ�R5�X��t%�s����ȸ�; 5�����)��X|?����9&��wĽjdn�{��7��/����q]3Ɲ�}�[��yF~�Q0����x��U�� ���˘?����a�;���/yޫ�����6.��C}���&L��9�_�ս�w�o���W�^�;�^u�xoݖ��Q8����4��kW��'����:9>����Xp5H��ONtL��=��_�&�0��H"Q��|H���4!���]�'�!޹Eܢ���}=soϢ~	K�$���`"!]j�+{'e�M��D]��=�>c��xS��Y����X��7�7+�Me̯/���u�Q����i���Eg�9�g�RU��#'��ޑW\r�aS�/3�"/v
IgX���}ٻ���ʏr�r���_��<�6�Gʋ&���z%�Pl^d����㑭v�ʎو�w�[���Q��k�K�����IWˈ��`/�Y�X��9J"��_��V{��je�i��6�<�ZS��� �t���W�Bg��@5���..��X�eʡ��*�HRgkD^>�y裝"�9�+wQ4ABR������^�k3�>2�����x�C�l���f:��#gщ�s� ��ߜ��ȁ���+���A��˾�g�1K9Cܹ��:���T"!I������Hs�;���ue��9@#ChE5&!��'�2�����w*a/Q��I	�E������I�w�����?��v })B��GQ�n�h"]0��]Z֑���.}�&~x2��
eĞsF�n�+�b�e�i����0Ix�y��Aѕ���
[1�B�R$$����:�4E疳��#�4���y���ӈ�6o1O�V'��7]�H�.)/)�OwW./�g�l��£���"$d���}[���t���U~�MQԲ�$��~��c��S�M�a���ш=��diH��(N�+U�D����f"V�"�����.ƈ�#Ͼ�eH:�x��d!k 6�J�f9�GW�4����Kp��T��3��~��G�؀��,�zZ��澰؋7����v#� &�r+O�@Ud7͐�$�\�D�O��W_�Ew�ͻ�7��oD����y��,��Ƣ�cƙd	���U�u�:�#�h6]�R
�U~	V�՟R�V������/�:r�F¬�k?|Ī�r\�<.�^9����?��]Aʻ�iT;vg�PpyM���1��},�dY\e8��I��2�wjM��S/�p�1�\^�6$4�F��(:�\nۢ�2�}�Pm�X�'.����U�3��bq�nXK�i_BD�_H}�r;Y^�t�<���o��#gw��2q_�|�^�<��E�h���O�����R�-Ɖ���S�	!��z�1�+iH�1G���+<����~�;|�F�{�}v�;s�j�Q;�٩�;&f�}�������tL ���#��Ъ>;��z���?U˽�~������e��{K%��/:F�/<�n�2k�8�x��S-�5�`��ԗ�H�{���R�y�S�(w��ѥe
�	0���w�޻�U1��7V-Q�̶ꪸ�g�X��3V&�T[+)b����2���(���B��,��z����9���B`��!��o�ע(�W�RZ���m��%/V�&��|g��f��*[_��nn��M�M`�%��)��Z�K$�����F�� ��$r^�k�K,	u;w������X���;�L�eoI�6��y%����~����)���0"�zc�BH�<�kW�E\.�b��R>mٺ��<����͑Թ���a=2X���=/��_;	Ρ�e&o.����]��2!�嫈�"I������j�höR��͒\L�0�e������,)ýf�; ��E��0��<%�Q�Aø�x8�� �]eQL�;|���꼬z�W2
�H�z�_��
/K`J�O�O�Y�~j���>����d�v��%�ެ7�4{%��٥7Z��>����|��5^�\ױ���:��Z^;��U��s�)��#�|�.̡���R2��j����şBб���*cMvD�W^{�������m�D��0�,������#���?O����
����?z�{ȓ'�|����/�����/�����/�����/�����/�����/�����/�����/|� W��gr�\9[remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://b6a2h14b4l7mi"
path="res://.godot/imported/MatrixVisualisation.png-4c0fcdb938810c6d92c7164631a1c21c.ctex"
metadata={
"vram_texture": false
}
 extends Control

@export var scriptCode: TextEdit
@export var executionButton: Button
@export var commadExecutor: CommandParserAndExecutor


# Called when the node enters the scene tree for the first time.
func _ready():
	executionButton.pressed.connect(onExecutionButtonPressed)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func onExecutionButtonPressed():
	commadExecutor.parse(scriptCode.text)
	commadExecutor.start()
�cA1�́�@��RSRC                    PackedScene            ��������                                            �      ..    StyleManager    blue    red    yellow    VBoxContainer 	   CodeEdit    Button 	   Commands    resource_local_to_scene    resource_name    background_mode    background_color    background_energy_multiplier    background_intensity    background_canvas_max_layer    background_camera_feed_id    sky    sky_custom_fov    sky_rotation    ambient_light_source    ambient_light_color    ambient_light_sky_contribution    ambient_light_energy    reflected_light_source    tonemap_mode    tonemap_exposure    tonemap_white    ssr_enabled    ssr_max_steps    ssr_fade_in    ssr_fade_out    ssr_depth_tolerance    ssao_enabled    ssao_radius    ssao_intensity    ssao_power    ssao_detail    ssao_horizon    ssao_sharpness    ssao_light_affect    ssao_ao_channel_affect    ssil_enabled    ssil_radius    ssil_intensity    ssil_sharpness    ssil_normal_rejection    sdfgi_enabled    sdfgi_use_occlusion    sdfgi_read_sky_light    sdfgi_bounce_feedback    sdfgi_cascades    sdfgi_min_cell_size    sdfgi_cascade0_distance    sdfgi_max_distance    sdfgi_y_scale    sdfgi_energy    sdfgi_normal_bias    sdfgi_probe_bias    glow_enabled    glow_levels/1    glow_levels/2    glow_levels/3    glow_levels/4    glow_levels/5    glow_levels/6    glow_levels/7    glow_normalized    glow_intensity    glow_strength 	   glow_mix    glow_bloom    glow_blend_mode    glow_hdr_threshold    glow_hdr_scale    glow_hdr_luminance_cap    glow_map_strength 	   glow_map    fog_enabled    fog_light_color    fog_light_energy    fog_sun_scatter    fog_density    fog_aerial_perspective    fog_sky_affect    fog_height    fog_height_density    volumetric_fog_enabled    volumetric_fog_density    volumetric_fog_albedo    volumetric_fog_emission    volumetric_fog_emission_energy    volumetric_fog_gi_inject    volumetric_fog_anisotropy    volumetric_fog_length    volumetric_fog_detail_spread    volumetric_fog_ambient_inject    volumetric_fog_sky_affect -   volumetric_fog_temporal_reprojection_enabled ,   volumetric_fog_temporal_reprojection_amount    adjustment_enabled    adjustment_brightness    adjustment_contrast    adjustment_saturation    adjustment_color_correction    script    render_priority 
   next_pass    transparency    blend_mode 
   cull_mode    depth_draw_mode    no_depth_test    shading_mode    diffuse_mode    specular_mode    disable_ambient_light    vertex_color_use_as_albedo    vertex_color_is_srgb    albedo_color    albedo_texture    albedo_texture_force_srgb    albedo_texture_msdf 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled 	   emission    emission_energy_multiplier    emission_operator    emission_on_uv2    emission_texture    normal_enabled    normal_scale    normal_texture    rim_enabled    rim 	   rim_tint    rim_texture    clearcoat_enabled 
   clearcoat    clearcoat_roughness    clearcoat_texture    anisotropy_enabled    anisotropy    anisotropy_flowmap    ao_enabled    ao_light_affect    ao_texture 
   ao_on_uv2    ao_texture_channel    heightmap_enabled    heightmap_scale    heightmap_deep_parallax    heightmap_flip_tangent    heightmap_flip_binormal    heightmap_texture    heightmap_flip_texture    subsurf_scatter_enabled    subsurf_scatter_strength    subsurf_scatter_skin_mode    subsurf_scatter_texture &   subsurf_scatter_transmittance_enabled $   subsurf_scatter_transmittance_color &   subsurf_scatter_transmittance_texture $   subsurf_scatter_transmittance_depth $   subsurf_scatter_transmittance_boost    backlight_enabled 
   backlight    backlight_texture    refraction_enabled    refraction_scale    refraction_texture    refraction_texture_channel    detail_enabled    detail_mask    detail_blend_mode    detail_uv_layer    detail_albedo    detail_normal 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness    uv1_world_triplanar 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    uv2_world_triplanar    texture_filter    texture_repeat    disable_receive_shadows    shadow_to_opacity    billboard_mode    billboard_keep_scale    grow    grow_amount    fixed_size    use_point_size    point_size    use_particle_trails    proximity_fade_enabled    proximity_fade_distance    msdf_pixel_range    msdf_outline_size    distance_fade_mode    distance_fade_min_distance    distance_fade_max_distance 	   _bundled       Script    res://camera.gd ��������   Script "   res://CommandParserAndExecutor.gd ��������   Script    res://StyleManager.gd ��������   Script    res://Style.gd ��������   Script    res://UIControl.gd ��������      local://Environment_iy8it 3      !   local://StandardMaterial3D_s5p1q s      !   local://StandardMaterial3D_5pt52 �      !   local://StandardMaterial3D_e01e0 �      !   local://StandardMaterial3D_g03tn $      !   local://StandardMaterial3D_tdijs _      !   local://StandardMaterial3D_o4bla �      !   local://StandardMaterial3D_yx8tk �      !   local://StandardMaterial3D_0cs6t       !   local://StandardMaterial3D_6o8mc K         local://PackedScene_slelq �         Environment                   ��3?��4?��1?  �?i         StandardMaterial3D    w      �l>��C?��
?  �?i         StandardMaterial3D    w      ���=	��>���>  �?i         StandardMaterial3D    w      ���=���>��?  �?i         StandardMaterial3D    w      ��\?���>��:?  �?i         StandardMaterial3D    w      ��?    ��x>  �?i         StandardMaterial3D    w        �?���;      �?i         StandardMaterial3D    w      ��l?��:?���>  �?i         StandardMaterial3D    w      ��k?��Q?      �?i         StandardMaterial3D    w      ��>?��?r�>  �?i         PackedScene    �      	         names "   !   	   Camera3D 
   transform    environment    script    DirectionalLight3D 	   Commands    styleManager    Node    StyleManager    styles    blue 
   styleName    hidden 	   material 	   CSGBox3D 	   selected    normal    red    yellow    Control    layout_mode    anchors_preset    offset_right    offset_bottom    scriptCode    executionButton    commadExecutor    VBoxContainer 	   CodeEdit    custom_minimum_size    highlight_current_line    Button    text    	   variants    +        �?              �?              �?  �@  �@  pA                         �?              �?              �?    �$@                                                                                   blue               �?              �?              �?   @                      �?              �?              �?  �?                       red      �?              �?              �?����    �T�              �?              �?              �?Re�>    �T�              �?              �?              �?�IC�    �T�               yellow      �?              �?              �?����                      �?              �?              �?C��                      �?              �?              �?�?�              	                     D    �D                                                   �C    ��C
         �C                  Execute       node_count             nodes     �   ��������        ����                                        ����                           ����           @                     ����         	  @                 
   ����            	                    ����      
                    ����                                ����                                ����                                ����                                ����                                ����                                ����                                ����                                ����                                ����                                 ����                               !     @"     @#     @$                    ����            %      &                    ����      '      (      )                    ����      (       *             conn_count              conns               node_paths              editable_instances              version       i      RSRC�7�[MF����pP�sclass_name Style extends Node

@export var normal: StandardMaterial3D
@export var hidden: StandardMaterial3D
@export var selected: StandardMaterial3D
@export var styleName: String

func _ready():
	normal = getChildWithName("normal").material
	hidden = getChildWithName("hidden").material
	selected = getChildWithName("selected").material
	
	print(name, " normal ", normal.albedo_color)
	print(name, " hidden ", hidden.albedo_color)
	print(name, " selected ", selected.albedo_color)

	for child in get_children():
		child.visible = false

func getChildWithName(name):
	for child in get_children():
		if child.name == name:
			return child
			
	return null
'class_name StyleManager extends Node

@export var styles: Array[Style]

func getStyle(name):
	for style in styles:
		if style.name == name:
			return style
			
	return null
s��extends Node

@export var tileWidth: int
@export var tileHeight: int
@export var tileDepth: int

@export var cube: Node

func _ready():
	var blockInstance = CSGBox3D.new()
	var material = StandardMaterial3D.new()
	material.albedo_color = Color(255,0,0)
	material.transparency = BaseMaterial3D.TRANSPARENCY_ALPHA
	material.blend_mode = BaseMaterial3D.BLEND_MODE_MUL
	
	blockInstance.position = Vector3(-0.1,-0.1,-0.1)
	blockInstance.size = Vector3(2.2, 1.2, 1.2)
	blockInstance.material = material
	add_child(blockInstance)
]�w�extends Button

@export var widthInput : LineEdit
@export var heightInput : LineEdit
@export var depthInput : LineEdit

@export var cube : Node

# Called when the node enters the scene tree for the first time.
func _ready():
	pressed.connect(_button_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _button_pressed():
	print("Generate button pressed")
	cube.width = widthInput.text
	cube.height = heightInput.text
	cube.depth = depthInput.text
	
	cube.clear()
	cube.generate()
	
	print("Generate button pressed")
'WFXC@RSRC                    PackedScene            ��������                                            �      ..    WidthEditContainer 	   LineEdit    HeightEditContainer    DepthEditContainer    Cube    resource_local_to_scene    resource_name    background_mode    background_color    background_energy_multiplier    background_intensity    background_canvas_max_layer    background_camera_feed_id    sky    sky_custom_fov    sky_rotation    ambient_light_source    ambient_light_color    ambient_light_sky_contribution    ambient_light_energy    reflected_light_source    tonemap_mode    tonemap_exposure    tonemap_white    ssr_enabled    ssr_max_steps    ssr_fade_in    ssr_fade_out    ssr_depth_tolerance    ssao_enabled    ssao_radius    ssao_intensity    ssao_power    ssao_detail    ssao_horizon    ssao_sharpness    ssao_light_affect    ssao_ao_channel_affect    ssil_enabled    ssil_radius    ssil_intensity    ssil_sharpness    ssil_normal_rejection    sdfgi_enabled    sdfgi_use_occlusion    sdfgi_read_sky_light    sdfgi_bounce_feedback    sdfgi_cascades    sdfgi_min_cell_size    sdfgi_cascade0_distance    sdfgi_max_distance    sdfgi_y_scale    sdfgi_energy    sdfgi_normal_bias    sdfgi_probe_bias    glow_enabled    glow_levels/1    glow_levels/2    glow_levels/3    glow_levels/4    glow_levels/5    glow_levels/6    glow_levels/7    glow_normalized    glow_intensity    glow_strength 	   glow_mix    glow_bloom    glow_blend_mode    glow_hdr_threshold    glow_hdr_scale    glow_hdr_luminance_cap    glow_map_strength 	   glow_map    fog_enabled    fog_light_color    fog_light_energy    fog_sun_scatter    fog_density    fog_aerial_perspective    fog_sky_affect    fog_height    fog_height_density    volumetric_fog_enabled    volumetric_fog_density    volumetric_fog_albedo    volumetric_fog_emission    volumetric_fog_emission_energy    volumetric_fog_gi_inject    volumetric_fog_anisotropy    volumetric_fog_length    volumetric_fog_detail_spread    volumetric_fog_ambient_inject    volumetric_fog_sky_affect -   volumetric_fog_temporal_reprojection_enabled ,   volumetric_fog_temporal_reprojection_amount    adjustment_enabled    adjustment_brightness    adjustment_contrast    adjustment_saturation    adjustment_color_correction    script    render_priority 
   next_pass    transparency    blend_mode 
   cull_mode    depth_draw_mode    no_depth_test    shading_mode    diffuse_mode    specular_mode    disable_ambient_light    vertex_color_use_as_albedo    vertex_color_is_srgb    albedo_color    albedo_texture    albedo_texture_force_srgb    albedo_texture_msdf 	   metallic    metallic_specular    metallic_texture    metallic_texture_channel 
   roughness    roughness_texture    roughness_texture_channel    emission_enabled 	   emission    emission_energy_multiplier    emission_operator    emission_on_uv2    emission_texture    normal_enabled    normal_scale    normal_texture    rim_enabled    rim 	   rim_tint    rim_texture    clearcoat_enabled 
   clearcoat    clearcoat_roughness    clearcoat_texture    anisotropy_enabled    anisotropy    anisotropy_flowmap    ao_enabled    ao_light_affect    ao_texture 
   ao_on_uv2    ao_texture_channel    heightmap_enabled    heightmap_scale    heightmap_deep_parallax    heightmap_flip_tangent    heightmap_flip_binormal    heightmap_texture    heightmap_flip_texture    subsurf_scatter_enabled    subsurf_scatter_strength    subsurf_scatter_skin_mode    subsurf_scatter_texture &   subsurf_scatter_transmittance_enabled $   subsurf_scatter_transmittance_color &   subsurf_scatter_transmittance_texture $   subsurf_scatter_transmittance_depth $   subsurf_scatter_transmittance_boost    backlight_enabled 
   backlight    backlight_texture    refraction_enabled    refraction_scale    refraction_texture    refraction_texture_channel    detail_enabled    detail_mask    detail_blend_mode    detail_uv_layer    detail_albedo    detail_normal 
   uv1_scale    uv1_offset    uv1_triplanar    uv1_triplanar_sharpness    uv1_world_triplanar 
   uv2_scale    uv2_offset    uv2_triplanar    uv2_triplanar_sharpness    uv2_world_triplanar    texture_filter    texture_repeat    disable_receive_shadows    shadow_to_opacity    billboard_mode    billboard_keep_scale    grow    grow_amount    fixed_size    use_point_size    point_size    use_particle_trails    proximity_fade_enabled    proximity_fade_distance    msdf_pixel_range    msdf_outline_size    distance_fade_mode    distance_fade_min_distance    distance_fade_max_distance 	   _bundled       Script    res://UpdateMatrixButton.gd ��������   Script    res://ChangeIterationOrder.gd ��������   Script    res://camera.gd ��������   Script    res://CubeCreator.gd ��������      local://Environment_51g78 �      !   local://StandardMaterial3D_5lq23 ;      !   local://StandardMaterial3D_7mo5n v      !   local://StandardMaterial3D_ga77t �         local://PackedScene_wcgiw          Environment             	      ��3?��4?��1?  �?f         StandardMaterial3D    t      ��i?��`?��t?  �?f         StandardMaterial3D    i         j         t      ��B?��B?��d?  �?f         StandardMaterial3D    t      ��*?���>��?  �?f         PackedScene    �      	         names "   #      Node3D    UI    Node2D    VBoxContainer    offset_right    offset_bottom    WidthEditContainer    layout_mode    HBoxContainer    Label    text 	   LineEdit    HeightEditContainer    DepthEditContainer    Button    script    widthInput    heightInput    depthInput    cube    HSeparator    OptionButton 	   Camera3D 
   transform    environment    DirectionalLight3D    Cube    width    height    depth    space    normalMaterial    hiddenMaterial    selectedMaterial    Node    	   variants            dC      B            Width       5       Height       Depth    	   Generate                                                                                      Iteration order             |,5��翾eP��+�=�mN?�W�+�3?�;�Ab�  ��  ��  ��                        �?              �?              �?    �$@                   )   333333�?                                 node_count             nodes     �   ��������        ����                      ����                     ����                                 ����                    	   	   ����         
                       ����         
                       ����                    	   	   ����         
                       ����         
                       ����             	       	   	   ����         
          	             ����         
                       ����         
              @	     @
     @     @                    ����                          ����                    	   	   ����         
                       ����                                 ����                                      ����                     "      ����                                              !                conn_count              conns               node_paths              editable_instances              version       f      RSRC��Sl[remap]

path="res://.godot/exported/133200997/export-e91e78ec645d865dc158d8b3ed912926-cube_node.scn"
�}�j��>���[remap]

path="res://.godot/exported/133200997/export-a68696f46601f32096e0cee462f15c82-SceneWithCommands.scn"
a�[remap]

path="res://.godot/exported/133200997/export-6464fe39e9c9fb03226b8569f0951e4c-VisualiseScene.scn"
ǒ�mlist=Array[Dictionary]([{
"base": &"Node",
"class": &"CommandParserAndExecutor",
"icon": "",
"language": &"GDScript",
"path": "res://CommandParserAndExecutor.gd"
}, {
"base": &"Node3D",
"class": &"CubeCreator",
"icon": "",
"language": &"GDScript",
"path": "res://CubeCreator.gd"
}, {
"base": &"Camera3D",
"class": &"FreeLookCamera",
"icon": "",
"language": &"GDScript",
"path": "res://camera.gd"
}, {
"base": &"Node",
"class": &"Style",
"icon": "",
"language": &"GDScript",
"path": "res://Style.gd"
}, {
"base": &"Node",
"class": &"StyleManager",
"icon": "",
"language": &"GDScript",
"path": "res://StyleManager.gd"
}])
��D<svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
���+��;��   ٿ��3��   res://icon.svga�(8��1,   res://v1_web/MatrixVisualisation.144x144.png��|��~�,   res://v1_web/MatrixVisualisation.180x180.pngX<����� ,   res://v1_web/MatrixVisualisation.512x512.png�EW�,��v5   res://v1_web/MatrixVisualisation.apple-touch-icon.pngP&:+Ph<)   res://v1_web/MatrixVisualisation.icon.png3ag���q$   res://v1_web/MatrixVisualisation.png��mivn   res://cube_node.tscnHY��g7.   res://MatrixVisualisation.apple-touch-icon.png
�˔\#�t"   res://MatrixVisualisation.icon.png(��nTV?   res://MatrixVisualisation.png�����e   res://SceneWithCommands.tscn�/>�\	   res://VisualiseScene.tscne�?�kECFG      application/config/name         MatrixVisualisation    application/run/main_scene$         res://SceneWithCommands.tscn   application/config/features(   "         4.1    GL Compatibility       application/config/icon         res://icon.svg  #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility^Y�j���#