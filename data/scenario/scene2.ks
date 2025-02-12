[bg storage="rouka.jpg" time="100"]
*start

[cm  ]
[clearfix]
[start_keyconfig]


;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]
;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true
#使用させていただいたツール
タクマ：(仮)全身立ち絵メーカー[r]
カオル・リサ：五百式全身メーカー[p]
ティラノスタジオ[r][p]
タイトルに戻ります。[p]
#
@jump storage="title.ks"