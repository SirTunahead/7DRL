GDPC                                                                               @   res://.import/enemy.png-41fe8dc360e641bde1ffa5e18678b763.stex   �=      &      d�!dg� ����.a���<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@N      U      -��`�0��x�5�[@   res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex  �C      �      ���+�ï�������G<   res://.import/wall.png-9b0e8f0ce8f6ab21260c2b1286395d20.stex�I      
      d˃s���GZՀ�i�   res://Entity/Enemy.gd.remap  ^      '       0
g#�!��F�x ��   res://Entity/Enemy.gdc  �      4      �LJ��'E���Z�   res://Entity/Enemy.tscn  
      �      m2���$���!`S�$   res://Entity/GameManager.gd.remap   P^      -       e2Դ�wխh7�/   res://Entity/GameManager.gdc�      m       Fl�'��PB0�1>��    res://Entity/GameManager.tscn   @      �      �<���u�an�}d�   res://Entity/Player.gd.remap�^      (       ф�+�p���X�X   res://Entity/Player.gdc        �      n������Y�7=�M�   res://Entity/Player.tscn�"      _      �>��:ԫ��\E�   res://Rooms/Room.tscn   0'      �      �Wp��ޙ�iK�   res://Rooms/Room2.tscn   4            ��Az�P�҆g'��X   res://Rooms/Room3.tscn   9      P      �K钎�ħnENΈ   res://Rooms/Wall.tscn   p<      z      k^)Js���@M6    res://Sprites/enemy.png.import   A      �      �a��]��h��1��H    res://Sprites/player.png.import `G      �      �2&vx�!t
O 6��7    res://Sprites/wall.png.import    K      �      _�Q_+��H�o�eF   res://default_env.tres  �M      �       um�`�N��<*ỳ�8   res://icon.png  �^      �      G1?��z�c��vN��   res://icon.png.import   �[      �      �����%��(#AB�   res://project.binary�k      �      ���D/�kZ�3��2�    GDSC         %   s      ���ׄ�   �������޶���   ��������϶��   �������϶���   ����ն��   ��������Ӷ��   ���������޶�   �������׶���   �������������޶�   �����������׶���   ��������Ӷ��   ���������Ӷ�   ��Ӷ   ���������Ӷ�   �����������Ӷ���            Test                                                                        	   #   
   (      )      .      3      4      9      :      @      A      G      M      Q      R      X      Y      _      `      f      i      j      k      l       m   !   n   "   o   #   p   $   q   %   3YY;�  Y;�  Y;�  Y;�  Y8;�  �  YY;�  �  Y;�  �  YY;�  �  Y;�	  �  YY;�
  �  YY0�  PQV�  �  �  �  �  �  &�  
�  V�  �  PQYY0�  PQV�  �  T�  PQYY0�  PQV�  .�  YYYYYYY�  Y`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/enemy.png" type="Texture" id=1]

[sub_resource type="GDScript" id=1]
script/source = "extends Area2D

var strength = 5
var dexterity = 5
var vitality = 5
var magic = 5
export var enemyName = \"Test\"

var max_health = 1
var max_mana = 0

var current_health = max_health
var current_mana = max_mana

var tile_size = 32

func takeDamage():
	#print(\"Health at Start: \" +str(current_health))
	current_health = current_health - 1
	if current_health <= 0:
		die()

func die():
	#print(\"died!\")
	self.queue_free()

func getEnemyName():
	return enemyName
# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass
#		die()

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	#pass
"

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 16, 16 )

[node name="Enemy" type="Area2D" groups=[
"Group_Enemy",
]]
collision_layer = 3
script = SubResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="Tween" type="Tween" parent="."]
               GDSC            ]      ���ӄ�   �����Ķ�   �����Ķ�   ����϶��   ����϶��   ����������Ķ   �����϶�   ����������������ض��   ���������������ض���   �������������޶�   ���������Ӷ�                       end_turn                   
                                 	      
          $      %      +      1      9      ?      C      G      H      N      U      V      Z      [      3YY5;�  W�  Y5;�  W�  YYYY;�  YY0�  PQV�  �  PQYY0�  PQV�  &�  �  V�  &�  T�	  �  V�  �  T�
  PQ�  �  �  �  PQ�  Y0�  PQV�  AP�  R�  Q�  �  �  PQ�  Y`   [gd_scene load_steps=7 format=2]

[ext_resource path="res://Entity/GameManager.gd" type="Script" id=1]
[ext_resource path="res://Entity/Player.tscn" type="PackedScene" id=2]
[ext_resource path="res://Rooms/Room2.tscn" type="PackedScene" id=3]
[ext_resource path="res://Rooms/Room.tscn" type="PackedScene" id=4]
[ext_resource path="res://Entity/Enemy.tscn" type="PackedScene" id=5]
[ext_resource path="res://Rooms/Room3.tscn" type="PackedScene" id=6]

[node name="GameManager" type="Node2D"]
position = Vector2( 96, 128 )
script = ExtResource( 1 )
__meta__ = {
"_edit_horizontal_guides_": [  ]
}

[node name="Player" parent="." instance=ExtResource( 2 )]
position = Vector2( 61.129, -16.0197 )
z_index = 1

[node name="Room" parent="." instance=ExtResource( 4 )]

[node name="Room2" parent="." instance=ExtResource( 3 )]
position = Vector2( 320, 128 )

[node name="Room3" parent="." instance=ExtResource( 6 )]
position = Vector2( 352, 224 )

[node name="Room4" parent="." instance=ExtResource( 4 )]
position = Vector2( 0, 224 )

[node name="TurnLabel" type="Label" parent="."]
visible = false
margin_left = 864.0
margin_top = -112.0
margin_right = 908.0
margin_bottom = -98.0
text = "Turn: 0"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Enemy2" parent="." instance=ExtResource( 5 )]
position = Vector2( 16, -16 )

[node name="Enemy3" parent="." instance=ExtResource( 5 )]
position = Vector2( 336, 16 )

[node name="Enemy" parent="." instance=ExtResource( 5 )]
position = Vector2( 144, 16 )
   GDSC   9      \   �     ���ׄ�   ��϶   ������򶶶   �����������   ����������ڶ   ����������ڶ   ��������ڶ��   ��������ڶ��   �������޶���   ��������϶��   �������϶���   ����ն��   ���������޶�   �������׶���   �������������޶�   �����������׶���   ��������Ӷ��   �����Ŷ�   ����ⶶ�   ���ⶶ��   �涶   ��������   �������ض���   �����϶�   ���������Ŷ�   �������ض���   ������Ҷ   ���   ���¶���   ���������������޶���   �����������޶���   �������������׶�   ���������׶�   ���������������¶���   ����¶��   ��Ķ   ���Ŷ���   ����������������Ҷ��   ���Ӷ���   ������ٶ   �������������������Ӷ���   �����¶�   �����������Ķ���   �����������Ѷ���   ����������ƶ   ��������������Ҷ   �����¶�   ��Ӷ   ����������ڶ   ���������Ӷ�   ���ض���   �������Ӷ���   ������������Ӷ��   ����϶��   ��������Ӷ��   ���Ӷ���   ���������Ӷ�      res://Entity/Enemy.tscn    
                ui_right      ui_left       ui_up         ui_down                 HP:       /         Mana:         Ray:          Group_Enemy              Group Combat!        instance id:                 end_turn                   
                        !      "   	   '   
   ,      1      6      7      :      =      >      C      H      I      N      Y      `      g      n      o      p      s      t      z      ~      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0     1     2     3     4     5   $  6   *  7   3  8   =  9   >  :   G  ;   P  <   Q  =   R  >   ]  ?   b  @   p  A   u  B   v  C   |  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \   3YY5;�  W�  Y:�  ?PQYY5;�  W�  Y5;�  W�  YY;�  �  Y;�	  �  Y;�
  �  Y;�  �  YY;�  Y;�  YY;�  �  Y;�  �  YY;�  �  Y;�  N�  V�  T�  RY�  V�  T�  RY�  V�  T�  RY�  V�  T�  OYYYB�  YY0�  PQV�  �  PQ�  �  �  T�  P�  T�  �  Q�  �  �  T�  �  �  YY0�  PQV�  �  P�
  �  Q�  �  �  �  �  �  �  �  �  &�  �  V�  �  �  �  &�  �  V�  �  �  �  �  �  T�  �	  �>  P�  PQQ�
  �>  P�  PQQ�  �  T�  �  �>  P�  PQQ�
  �>  P�   PQQYY0�!  P�"  QV�  )�#  �  T�$  PQV�  &�"  T�%  P�#  QV�  �&  P�#  QYY0�&  P�#  QV�  �  T�'  �  L�#  M�  �  �  T�(  PQ�  ;�)  �  T�*  PQ�  �?  P�  �>  P�)  QQ�  �  &�  T�+  PQV�  �  �  L�#  M�  �  �  �  '�)  T�,  P�  Q�  V�  �?  P�  Q�  �?  P�  �>  P�)  T�-  PQQQ�  �.  P�)  Q�  �  &�  
�  V�  �/  PQ�  �0  P�  QYY0�/  PQV�  �1  PQYY0�.  P�)  QV�  �  ;�2  �3  PQT�4  �  ;�5  �2  T�6  P�)  T�7  Q�  �  �5  T�8  PQYY0�  PQV�  .�  YY0�   PQV�  .�  �  Y0�  PQV�  .�  YY0�  PQV�  .�  Y`     [gd_scene load_steps=4 format=2]

[ext_resource path="res://Sprites/player.png" type="Texture" id=1]
[ext_resource path="res://Entity/Player.gd" type="Script" id=2]



[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 16 )

[node name="Player" type="Area2D"]
collision_mask = 3
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="RayCast2D" type="RayCast2D" parent="."]
collide_with_areas = true

[node name="Tween" type="Tween" parent="."]

[node name="Camera2D" type="Camera2D" parent="."]
current = true

[node name="HealthLabel" type="Label" parent="."]
margin_left = -157.155
margin_top = 48.1376
margin_right = -117.155
margin_bottom = 62.1376
text = "Health"
__meta__ = {
"_edit_use_anchors_": false
}

[node name="ManaLabel" type="Label" parent="."]
margin_left = -158.099
margin_top = 61.3518
margin_right = -118.099
margin_bottom = 75.3518
text = "Mana"
__meta__ = {
"_edit_use_anchors_": false
}
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://Rooms/Wall.tscn" type="PackedScene" id=1]


[node name="Room" type="Node2D"]

[node name="Wall" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, -112 )

[node name="Wall2" parent="." instance=ExtResource( 1 )]
position = Vector2( -48, -112 )

[node name="Wall3" parent="." instance=ExtResource( 1 )]
position = Vector2( -16, -112 )

[node name="Wall4" parent="." instance=ExtResource( 1 )]
position = Vector2( 16, -112 )

[node name="Wall5" parent="." instance=ExtResource( 1 )]
position = Vector2( 48, -112 )

[node name="Wall6" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -112 )

[node name="Wall7" parent="." instance=ExtResource( 1 )]
position = Vector2( 112, -112 )

[node name="Wall8" parent="." instance=ExtResource( 1 )]
position = Vector2( 144, -112 )

[node name="Wall9" parent="." instance=ExtResource( 1 )]
position = Vector2( 176, -112 )

[node name="Wall10" parent="." instance=ExtResource( 1 )]
position = Vector2( 208, -112 )

[node name="Wall11" parent="." instance=ExtResource( 1 )]
position = Vector2( 240, -112 )

[node name="Wall12" parent="." instance=ExtResource( 1 )]
position = Vector2( 272, -112 )

[node name="Wall25" parent="." instance=ExtResource( 1 )]
position = Vector2( 272, -80 )

[node name="Wall26" parent="." instance=ExtResource( 1 )]
position = Vector2( 272, -48 )

[node name="Wall28" parent="." instance=ExtResource( 1 )]
position = Vector2( 272, 16 )

[node name="Wall29" parent="." instance=ExtResource( 1 )]
position = Vector2( 272, 48 )

[node name="Wall30" parent="." instance=ExtResource( 1 )]
position = Vector2( 272, 80 )

[node name="Wall31" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, -80 )

[node name="Wall32" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, -48 )

[node name="Wall33" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, -16 )

[node name="Wall34" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, 16 )

[node name="Wall35" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, 48 )

[node name="Wall36" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, 80 )

[node name="Wall13" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, 112 )

[node name="Wall14" parent="." instance=ExtResource( 1 )]
position = Vector2( -48, 112 )

[node name="Wall15" parent="." instance=ExtResource( 1 )]
position = Vector2( -16, 112 )

[node name="Wall16" parent="." instance=ExtResource( 1 )]
position = Vector2( 16, 112 )

[node name="Wall17" parent="." instance=ExtResource( 1 )]
position = Vector2( 48, 112 )

[node name="Wall18" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, 112 )

[node name="Wall19" parent="." instance=ExtResource( 1 )]
position = Vector2( 112, 112 )

[node name="Wall20" parent="." instance=ExtResource( 1 )]
position = Vector2( 144, 112 )

[node name="Wall21" parent="." instance=ExtResource( 1 )]
position = Vector2( 176, 112 )

[node name="Wall22" parent="." instance=ExtResource( 1 )]
position = Vector2( 208, 112 )

[node name="Wall23" parent="." instance=ExtResource( 1 )]
position = Vector2( 240, 112 )

[node name="Wall24" parent="." instance=ExtResource( 1 )]
position = Vector2( 272, 112 )
   [gd_scene load_steps=2 format=2]

[ext_resource path="res://Rooms/Wall.tscn" type="PackedScene" id=1]


[node name="Room2" type="Node2D"]

[node name="Wall2" parent="." instance=ExtResource( 1 )]
position = Vector2( -48, 16 )

[node name="Wall3" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, 16 )

[node name="Wall5" parent="." instance=ExtResource( 1 )]
position = Vector2( 16, -240 )

[node name="Wall6" parent="." instance=ExtResource( 1 )]
position = Vector2( 48, -240 )

[node name="Wall15" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -16 )

[node name="Wall17" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -80 )

[node name="Wall18" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -112 )

[node name="Wall19" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -48 )

[node name="Wall20" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -144 )

[node name="Wall22" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -208 )

[node name="Wall23" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -240 )

[node name="Wall24" parent="." instance=ExtResource( 1 )]
position = Vector2( 80, -176 )

[node name="Wall8" parent="." instance=ExtResource( 1 )]
position = Vector2( -16, -240 )
              [gd_scene load_steps=2 format=2]

[ext_resource path="res://Rooms/Wall.tscn" type="PackedScene" id=1]


[node name="Room" type="Node2D"]

[node name="Wall25" parent="." instance=ExtResource( 1 )]
position = Vector2( 48, -48 )

[node name="Wall31" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, -48 )

[node name="Wall40" parent="." instance=ExtResource( 1 )]
position = Vector2( -16, 16 )

[node name="Wall41" parent="." instance=ExtResource( 1 )]
position = Vector2( 48, 16 )

[node name="Wall43" parent="." instance=ExtResource( 1 )]
position = Vector2( -48, 16 )

[node name="Wall46" parent="." instance=ExtResource( 1 )]
position = Vector2( -80, 16 )

[node name="Wall44" parent="." instance=ExtResource( 1 )]
position = Vector2( 16, 16 )

[node name="Wall45" parent="." instance=ExtResource( 1 )]
position = Vector2( 48, -16 )
[gd_scene load_steps=3 format=2]

[ext_resource path="res://Sprites/wall.png" type="Texture" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 16 )

[node name="Wall" type="StaticBody2D"]

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
      GDST                 
  PNG �PNG

   IHDR           szz�   sRGB ���  �IDATX��W=h�@������Y:h(D(�M�P<����s J�Po�3��xt�䭐֝C�.m���M��m�:Xw>I�#A]�����t��+U��4��n��<u��v�d��	d�PĞ$�H&���Jl�쎇p�  ��xJ}^�v��� ��B�ȼ0u4{-P�����5u'��[G�	¡�� I��bCWz�� ��h�Z�=��XL�,���;)]��}=��J8�	��W�5O<����E0�f�<̭�W8}�q �HB Jbw<L]C�a����PD��B<rl�&�D���^���y�2$��Np��;����f�(OtƁ���� ����+p���@v��J3��E��sq��2�B�n6kD���d������#`�[�NH7����f`aֈ��n^�jd�в]���;;f�8y|��֩'
�?\./�����`n��?5^-t}��Qw ��D	�L�6�!�|2�K�,�A��3�;��J|����̐l0	;a6�|((!Yh$U�ˁR�ా+<����H��/>ۖ��˙zXeQ���]��z�	 �`��˙�;)�}|��:Cϱ���D���r�a��A\"�@���,�R�hIKP��È.ds�:Z�:�պ�(�tĕ����=���^��F�[���$�#�2�ց��z�TI"%uE���H٢y��7�+ �%    IEND�B`�          [remap]

importer="texture"
type="StreamTexture"
path="res://.import/enemy.png-41fe8dc360e641bde1ffa5e18678b763.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/enemy.png"
dest_files=[ "res://.import/enemy.png-41fe8dc360e641bde1ffa5e18678b763.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
    GDST                 �  PNG �PNG

   IHDR           szz�   sRGB ���  GIDATX��WMHA�VC�І�CJsT��D�ɡ�x����P"J��/��=��1�=��`�'=��ҋ��<��Tz�4O"���{�nf���Lf޼�����*�`�
��YK_Ǖ�;�I��1O����Z ��L��������$ ���K��z�M���{�h4�ǏR�� ���l�$@O��'�vO��i�*͵�^� &'�D�$�$�%@Z}�������A�'�{$�T�&�R���:�b�5&-�&�!����=�N���	H"Ж � 垜qbt�mgL�	5��V��^"\ρ�:MM�\fƆ��D��v��<Gbt��i�*G�mD��	˪�E8� ���S�P� �L�K�Z�  �������A�Qd�2�ր"��g�qՖ =��E�K��:��[ -�� ��Y|�
�C���<N��!������,��΀Qm��� ���4��P<c�	���92�� ߗGw�,��ELw��A���f:b��� =w�6 ���{�c>As�����Ԛ1�\�8��� P�����.(  ��}���Z�b���C����Gl���<�\�?b=����׍Yw��H_)�L�Kz��N�X�T��tE��ء��e�>}} ��R�"�!N)p=�HRIh#B����G�E��ԧ���z(��=?��h�*���� )y�qv�� ��\�)6��?+c��Ď�@�q&}_��=���54�d�E3��0B!�l�mQ���w-�z�%>߷��5���2�=~�/�|�����5<ܾ0�AH%��wW^��.&��h�eK��}_�>`���f���/T    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/player.png"
dest_files=[ "res://.import/player.png-b12d81cacd41edd115dbd315254b5ad9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST                 �   PNG �PNG

   IHDR           szz�   sRGB ���   �IDATX���� E���gz�͆�U���]�t��H�����`4 "5�!���7 3�XH5 "��u Z5 cH3��O��� V�AO�
��F��u� r��.�70t�Xo�7�`O ZnV�Q,{���\ ��Q& :�2�.��� hs�{���8�8S:��NM    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/wall.png-9b0e8f0ce8f6ab21260c2b1286395d20.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprites/wall.png"
dest_files=[ "res://.import/wall.png-9b0e8f0ce8f6ab21260c2b1286395d20.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Entity/Enemy.gdc"
         [remap]

path="res://Entity/GameManager.gdc"
   [remap]

path="res://Entity/Player.gdc"
        �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         7DRL   application/run/main_scene(         res://Entity/GameManager.tscn      application/config/icon         res://icon.png     display/window/size/width      @     display/window/size/height      �      display/window/size/test_width            display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   layer_names/2d_physics/layer_2         enemy   )   rendering/environment/default_environment          res://default_env.tres       