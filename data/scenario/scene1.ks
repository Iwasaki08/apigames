;ティラノスクリプトサンプルゲーム

*start

[cm  ]
[clearfix]
[start_keyconfig]


[bg storage="rouka.jpg" time="100"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;risa
[chara_new  name="risa" storage="chara/risa/normal.png" jname="リサ"  ]
;kaoru
[chara_new  name="kaoru" storage="chara/kaoru/normal.png" jname="カオル"  ]
;takuma
[chara_new  name="takuma"  storage="chara/takuma/normal.png" jname="タクマ" ]

#あらすじ
夜の学校。薄暗い廊下を歩く主人公リサと仲間たち（カオル、タクマ）。足音が静かに響き、不気味な雰囲気が漂う。[p]
[chara_show  name="risa"  ]
#リサ
「本当に行くの？音楽室の噂、ただの作り話じゃ無いの...?」[p]
[chara_show  name="kaoru"  ]
#カオル
「だから確かめるのよ。怖いなら待っててもいいよ？」[p]
[chara_show  name="takuma" height=650 ]
#タクマ
「おいおい、ここで逃げたら笑い物だぞ。」[p]
#
音楽室のドア前に到着。中からかすかなピアノの音が響いてくる。[p]



[glink  color="gray"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="「ドアを開ける」"  target="*open"  ]
[glink  color="gray"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="「その場を離れる」"  target="*close"  ]
[s  ]
*open
@playbgm time="3000" storage=教室の戸を開ける.mp3 loop=false
[bg storage="nc307458_学校の音楽室（夜・照明ON）.jpg" time="100"]
#
ドアを開けると、古びたピアノが独りでに動いている。誰もいない部屋の中に、冷たい空気が漂う。[p]
@playbgm time="3000" storage=maou_se_inst_piano2_7si.mp3 loop=true volume="10"
[chara_hide name="takuma"]
#リサ
「誰かいる...?これ、本当にやばいんじゃ...?」[p]
#カオル
「...なんでピアノが動いているの？」[p]
[bg storage="学校の音楽室（夜・照明OFF）.jpg" time="100"]
#
突然、部屋の明かりが消え、不気味な囁き声が響く。[p]
@stopbgm
#囁き声
「次は君の番だ...」[p]
[chara_hide name="risa"]
[chara_hide name="kaoru"]
[chara_hide name="takuma"]
[bg storage="1701.png" time="100"]
#
暗闇の中で何かがリサ達を掴み、悲鳴が響く[p]
[position layer="message0" left=20 top=40 width=1200 height=660 page=fore visible=true ]
#
[font size=50]
死亡エンド[r]
[resetfont]
翌日、音楽室にはピアノだけが残され、リサ達の姿は消える。新たな怪談が始まる。「音楽室でピアノの音を聴いた生徒は戻ってこない。」と。[p]
タイトルに戻ります。[p]
@jump storage="title.ks"
*close
#
リサ達はその場を離れる決断をする。廊下に戻ると、不気味な感覚が消えるが、リサの胸には妙な違和感が残る。[p]
[chara_hide name="kaoru"]
#リサ
「あれ、やっぱり行かなくて正解だったよね？」[p]
#タクマ
「まあ...何かあったら嫌だしな。」[p]
#
[chara_hide name="takuma"]
[chara_hide name="risa"]
[bg storage="1701.png" time="100"]
#
次の日、リサは図書館で音楽室の噂について調べ始める。古い記録の中に、音楽教師・橘先生の名前が頻繁に登場するのを見つける。[p]
#
[font size=50]
第二章　橘先生の謎[p]
[resetfont]
[bg storage="図書室（夕方）.jpg" time="100"]
#
図書館で古いアルバムを調べるリサ。[p]
#リサ
「この橘先生って人...音楽室の事故と関係があるのかも。」[p]
#
アルバムの最後には音楽室でピアノを弾く橘先生の写真があるが、顔が切り取られている。[l]
その夜、リサは夢をみる。[p]
[bg storage="1701.png" time="100"]
#
リサの夢の中。音楽室でピアノを弾く橘先生の影が見える。[p]
[bg storage="学校の音楽室（日中）.jpg" time="100"]
#橘先生(囁き声)
「演奏を終わらせて...」[p]
#

[glink  color="gray"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="150"  text="「音楽室に戻り、ピアノを弾く」"  target="*play"  ]
[glink  color="gray"  storage="scene1.ks"  size="28"  x="360"  width="500"  y="250"  text="「さらに真相を調べる」"  target="*search"  ]
[s  ]
*play
[bg storage="学校の音楽室（夜・照明OFF）.jpg" time="100"]
#
夜の音楽室に再び訪れるリサ。冷たい空気が漂い、ピアノが静かに佇む。[p]
#リサ
「これで呪いが終わるなら、やるしか無い」[p]
#
リサがピアノを弾き始めると、部屋の空気が変わり、影が集まり始める。最後の音を奏でると...。[p]
[eval exp="f.random = Math.random() < 0.5 ? 0 : 1"]
[if exp="f.random == 0"]
[jump target="good"]
[else]
[jump target="aut"]
[endif]
*good
#
呪いが解け、音楽室が静寂に戻る。[p]
#
リサは解放されたが、夜に不気味な施律が耳に残るようになる。[p]
#
[font size=50]
成功エンド[p]
[resetfont]
タイトルに戻ります。[p]
#
@jump storage="title.ks"
*aut
#
途中で演奏をミスしたリサは影に飲み込まれる[p]
#
翌日、音楽室から新たに怪談が広まる。[p]
#
[font size=50]
死亡エンド[p]
[resetfont]
タイトルに戻ります。[p]
#
@jump storage="title.ks"
*search
[bg storage="喫茶店（夕方）.jpg" time="100"]
#
リサは元生徒に話を聞き、事故の背景を知る。[p]
#元生徒
「先生は封印しようとしたけど、途中で演奏をやめた。[l]
それが呪いの始まりだったんだ。」[p]
#
リサは演奏を完遂する以外に呪いを解く方法がないことを知り、再び音楽室に向かう決意をする。[p]
@jump target="play2"
*play2
[bg storage="学校の音楽室（夜・照明OFF）.jpg" time="100"]
#
夜の音楽室に再び訪れるリサ。冷たい空気が漂い、ピアノが静かに佇む。[p]
#リサ
「これで呪いが終わるなら、やるしか無い」[p]
#
リサがピアノを弾き始めると、部屋の空気が変わり、影が集まり始める。最後の音を奏でると...。[p]
#
呪いが解け、音楽室が静寂に戻る。[p]
#
リサは解放されたが、夜に不気味な施律が耳に残るようになる。[p]
#
[font size=50]
成功エンド[p]
[resetfont]
タイトルに戻ります。[p]
#
@jump storage="title.ks"