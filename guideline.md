# W3C仕様書の日本語翻訳にあたってのガイドライン (案)

20201015議事録から20200903議事録まで反映
　　
## 基本的なルール
- 字種変更時 (日本語から英語，英語から日本語) には半角スペースを挿入する．
  - ただし，「WoTアーキテクチャ」等，一単語になっており，字種変更時に半角スペースを入れると違和感のあるものはスペースを挿入しない．
  - リファレンス (例: JSON[RFC8259]) については，出現件数が多いため，ツール等を用いて一括変換する．
  - 査読作業が完了した後，全体を通して違和感がないかどうかを確認する．
- 文末は「です・ます調」ではなく「である調」とする．
  - 各人が担当箇所については「である調」に揃えた上で，最後に全体を通して再確認する．
  - 「である調」に揃える以外に改訂箇所がない場合もPull Requestを上げる．
- 句読点は「，」および「．」ではなく，「、」および「。」とする．
- 英語では省略されがちな代名詞(It等)は，日本語にする際，わかりやすくするために，省略せずに翻訳する．
- 「A as well as B」や「allow for A」等，頻繁に用いられる英語表現があるが，文脈に応じて意味が変わる可能性があるため，前後の文脈を考慮して翻訳する．
  - 例えば，「A as well as B」については，「Bに加えてAも」という場合と，「Aも，Bも」という場合がある．
  - また，「allow for A」については「Aができる」という場合と，「Aを考慮に入れる」という場合がある．
- 英語の複合語(例: Edge Device，Smrt Factory，Smart City)を日本語にする場合、日本語として通常用いられている用語の場合は、「エッジ・デバイス」というように中点を付与することはせず，一単語として「エッジデバイス」のように記述する．
  - 図を挿入するための<img>タグ中の "alt" 属性においても中点は削除する．
- 単語末尾の長音(ー)は，基本的に付与する (「センサー」や「サーバー」等)．
- 括弧は半角
  * 字種変更の一種とみなし，開き括弧の前と，閉じ括弧の後ろには半角スペースを挿入
  * ただし，一単語とみなす場合等，半角スペースを挿入すると違和感がある場合は挿入しない
  * 最後に，違和感ないか，全体を再確認する
- RFC2119キーワード (MUST/SHOULD/MAY) の日本語訳については，最後に全体を通して再確認
- 「1つ」は，全般的に「一つ」(漢数字)に統一する
- 英語の人名は，英語表記のままとする

## 訳語ルール

[2019年度の翻訳結果](https://github.com/mryuichi/ttc-docs/blob/master/20200410/JF-wot-arch-200409-clear.doc) および [WCAG 2.0 JIS原案](https://waic.jp/docs/WCAG20/Overview.html#intro) にもとづいて，以下の訳語を用いる．

### 全般的な用語
|英語|日本語|
|:---|:---|
|Abstract|概要|
|Status of This Document|この文書のステータス (「document」全般も「文書」とする; ただし，「TD document」や「W3C Process Document」等の用語においては「ドキュメント」とする)|
|W3C Members|W3C会員|
|normative|規定 (「This section is normative.」は「この章は規定である。」)|
|non-normative|「This section is non-normative.」は「この章は参考情報である。」とし，文中の「non-normatve」は「非規定的」とする。|
|informative|参考情報|
|Introduction|はじめに|
|Conformance|適合性|
|Terminology|用語|

### 技術的な用語
|英語|日本語|
|:---|:---|
|Action|(英語のまま)|
|actuation|動作|
|actuator|アクチュエーター|
|assertion|言明 (JIS X007:2001では「表明」とされている．また，「アサーション」とするべき可能性もあるので，最終的に再確認)|
|Assignment Function|割当関数|
|authentication/authorization|認証・認可 (文脈によって使い分け検討)|
|area|領域 (文脈に応じて要検討)|
|behavior|動作 (文脈によって「振る舞い」や「挙動」となる可能性あり)|
|Binding Templates|バインディングテンプレート|
|capability|機能|
|Class|クラス|
|collaboration|連携|
|collection|コレクション|
|compute-intensive|計算集約型の|
|configuration|構成|
|Consumed Thing|利用されるThing|
|Consuming a Thing|Thingを利用する|
|Consumer|(「Thing Descriptionを読み込んで処理するServient」という意味の場合は，英語のまま「Consumer」)|
|consumer|(一般的な英語として「利用する人・モノ」の場合は)消費者|
|content type (小文字)|コンテンツタイプ|
|cost|損失 (文脈に応じて要検討)|
|critical|重篤 (文脈に応じて要検討，[「クリティカル」，「危機的」等)|
|damage|損害 (文脈に応じて要検討)|
|data schema|データスキーマ (Architecture仕様書中の用語定義の箇所では「データスキーマ (Data Schema)」)|
|deployment|デプロイメント|
|designed to|目指している|
|Digital Twin (およびdigital twin)|デジタルツイン|
|Director|ディレクター (W3CディレクターとしてのTim Berners-Lee)|
|discovery|発見 (状況に応じて「ディスカバリ」とする可能性あり)|
|document|文書|
|domain-specific vocabulary|ドメイン固有の語彙|
|Edge Device|エッジデバイス|
|engineering|土木工事 (文脈に応じて要検討)|
|Event|(英語のまま)|
|event|出来事 (小文字でも，IT用語としての「イベント」である場合あり)|
|Exposed Thing|公開された Thing|
|Exposing a Thing|Thing を公開する|
|fingerprinting or fingerprintable|フィンガープリンティング もしくは フィンガープリンティング可能な|
|governed by (the W3C Process Document)|準拠している
|global および globally|グローバル および グローバルに|
|healthcare|医療 (文脈に応じて「ヘルスケア」)|
|human-readable (or human readable)|人間が読める|
|hypermedia control|ハイパーメディア制御|
|hyprmedia-driven|ハイパーメディア駆動|
|infrastructure|インフラストラクチャ|
|insight|洞察|
|Instance Relation|インスタンス関係|
|interact|相互作用する|
|interaction|相互作用 (下記の通り，「Interaction Affordance」は「相互作用*の*アフォーダンス」となることに注意)|
|Interaction Affordance|相互作用のアフォーダンス|
|Interaction Model|相互作用モデル|
|Intermediary|(英語のまま)|
|Internet of Things (IoT)|(英語のまま)|
|interwork|相互運用|
|IoT Platform|IoTプラットフォーム|
|legacy device|旧式デバイス|
|machine-readable (or machine readable)|機会処理可能な|
|metadata|メタデータ|
|mitigation|(リスクの)軽減|
|Object|オブジェクト|
|Personally Identifiable Information (PII)|個人識別可能情報|
|privacy|プライバシー|
|Private Security Data|(英語のまま)|
|Property|(英語のまま)|
|Protocol Binding|プロトコルバインディング|
|protocol stack|プロトコルスタック|
|Public Security Metadata|(英語のまま)|
|RECOMMENDED or recommended|推奨される|
|remote|リモート|
|risk|リスク|
|sample|サンプル (exampleが「例」であるのと対比して)|
|scalability|スケーラビリティ|
|search|検索|
|section|レベルに合わせて，「章」(第一レベル)，「節」(第二レベル)または「項」第三レベルとする|
|security|セキュリティ|
|Security and Privacy Consideratons|セキュリティとプライバシーへの配慮 ([SVG仕様書のJIS日本語訳](https://kikakurui.com/x4/X4197-2012-01.html)にもとづいて，「considerations」は「配慮」と訳す)|
|Security Configuration|セキュリティ構成情報|
|security hazard|セキュリティ上の危険性|
|see ...|...を参照のこと (「Please see ...」は「...を参照いただきたい」)|
|sensor|センサー|
|serialization|シリアライゼーション|
|Servient|(英語のまま)|
|Signature|シグネチャ|
|Simple Type|単純型|
|smart building|スマートビルディング|
|subprotocol|サブプロトコル|
|subscribe, receive, unsubscribe (subscribing, receiving, unsubscribing)|登録、受信、登録解除|
|TD|(英語のまま)|
|TD document|TDドキュメント（訳注：原文にないが、必要な定義のため追加。次版に追加予定。）|
|TD instance (および「Thing Description instance」)|TDインスタンス (および「Thing Descriptionインスタンス) (=「の」でつなぐのでなく)|
|TD Vocabulary|TD 語彙|
|Term|用語|
|Thing or Web Thing|Thing または Web Thing|
|thing (頭文字が小文字)|モノ|
|Thing Directory|(英語のまま)|
|tracking risk|追跡のリスク|
|Transfer Protocol|転送プロトコル|
|Type Function|型関数|
|used to ... (特に表の中の説明で)|...のために用いられる|
|UX devices|UXデバイス|
|validation|バリデーション|
|virtual representation|仮想表現|
|Virtual Thing (およびvirtual thing)|ヴァーチャルThing|
|Vocabulary Term|語彙用語|
|W3C Members|W3C会員|
|W3C Process Document|W3Cプロセスドキュメント|
|Web|ウェブ|
|WoT Interface|WoT インターフェース|
|Web of Things (WoT)|(英語のまま)|
|WoT Architecture|WoTアーキテクチャ|
|WoT Runtime|WoT ランタイム|
|WoT Scripting API|WoT スクリプティング API|
|WoT Servient|(英語のまま)|
|WoT Thing Description or Thing Description|WoT Thing Description または Thing Description|www.linguee.jp/英語-日本語/翻訳/network+facing.html

## 英語自体について要確認の箇所
* 4.1.11 Smart Cities: 「Bridges, Dams, Levees, Canals」と頭文字が大文字になっている
* 5.2.7 Acessibility: 「This can be utilized by accessibility tools to provide user interfaces of different modality, thereby removing barriers to using physical devices and IoT-related applications.」

## 既存の日本語翻訳事例
- WoT Architecture (2019年度のWoT検討会DSTFでの日本語翻訳)
  - 英語原本: https://www.w3.org/TR/2020/REC-wot-architecture-20200409/
  - 日本語原本: https://github.com/mryuichi/ttc-docs/blob/master/20200410/JF-wot-arch-200409-clear.doc (Word)
- WCAG 2.0 (JIS X8341-3:2016作成時の日本語翻訳
  - 英語原本: https://www.w3.org/TR/2008/REC-WCAG20-20081211/
  - 日本語原本: https://waic.jp/docs/WCAG20/Overview.html
  - 参考(JIS文書): https://kikakurui.com/x8/X8341-3-2016-01.html
  
## 既存のガイドライン
- 上綱さんの対訳用語集: http://www.asahi-net.or.jp/~ax2s-kmtn/ref/trans_term.htmldiscrete
- [翻訳の泉](https://www.honyakunoizumi.info)
  - [翻訳の泉14回](https://www.honyakunoizumi.info/Class_014.htm) - and, as well as
  - [翻訳の泉22回](https://www.honyakunoizumi.info/Class_022.htm) - allow for

