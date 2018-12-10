##############################
# Definitions
##############################

USER_APPS = {index,puzzle,maze,bird,turtle,movie,music,pond/docs,pond/tutor,pond/duck,gallery}
ALL_JSON = {./,index,puzzle,maze,bird,turtle,movie,music,pond/docs,pond,pond/tutor,pond/duck,gallery}
ALL_TEMPLATES = appengine/template.soy,appengine/index/template.soy,appengine/puzzle/template.soy,appengine/maze/template.soy,appengine/bird/template.soy,appengine/turtle/template.soy,appengine/movie/template.soy,appengine/music/template.soy,appengine/pond/docs/template.soy,appengine/pond/template.soy,appengine/pond/tutor/template.soy,appengine/pond/duck/template.soy,appengine/gallery/template.soy

APP_ENGINE_THIRD_PARTY = appengine/third-party
SOY_COMPILER = java -jar third-party/SoyToJsSrcCompiler.jar --shouldProvideRequireSoyNamespaces --isUsingIjData
SOY_EXTRACTOR = java -jar third-party/SoyMsgExtractor.jar

##############################
# Rules
##############################

all: deps languages

index-en:
	mkdir -p appengine/generated/en/
	$(SOY_COMPILER) --outputPathFormat appengine/index/generated/en/soy.js --srcs appengine/index/template.soy
	python build-app.py index en

puzzle-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/puzzle/generated/en/soy.js --srcs appengine/puzzle/template.soy
	python build-app.py puzzle en

maze-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/maze/generated/en/soy.js --srcs appengine/maze/template.soy
	python build-app.py maze en

bird-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/bird/generated/en/soy.js --srcs appengine/bird/template.soy
	python build-app.py bird en

turtle-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/turtle/generated/en/soy.js --srcs appengine/turtle/template.soy
	python build-app.py turtle en

movie-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/movie/generated/en/soy.js --srcs appengine/movie/template.soy
	python build-app.py movie en

music-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/music/generated/en/soy.js --srcs appengine/music/template.soy
	python build-app.py music en

pond-docs-en:
	mkdir -p appengine/pond/generated/en/
	$(SOY_COMPILER) --outputPathFormat appengine/pond/docs/generated/en/soy.js --srcs appengine/pond/docs/template.soy
	python build-app.py pond/docs en

pond-tutor-en: pond-common-en
	$(SOY_COMPILER) --outputPathFormat appengine/pond/tutor/generated/en/soy.js --srcs appengine/pond/tutor/template.soy
	python build-app.py pond/tutor en

pond-duck-en: pond-common-en
	$(SOY_COMPILER) --outputPathFormat appengine/pond/duck/generated/en/soy.js --srcs appengine/pond/duck/template.soy
	python build-app.py pond/duck en

genetics-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/genetics/generated/en/soy.js --srcs appengine/genetics/template.soy
	python build-app.py genetics en

gallery-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/gallery/generated/en/soy.js --srcs appengine/gallery/template.soy
	python build-app.py gallery en

pond-common-en: common-en
	$(SOY_COMPILER) --outputPathFormat appengine/pond/generated/en/soy.js --srcs appengine/pond/template.soy

common-en:
	$(SOY_COMPILER) --outputPathFormat appengine/generated/en/soy.js --srcs appengine/template.soy

en: index-en puzzle-en maze-en bird-en turtle-en movie-en music-en pond-docs-en pond-tutor-en pond-duck-en genetics-en gallery-en

index-zh-hans:
	mkdir -p appengine/generated/zh-hans/
	$(SOY_COMPILER) --outputPathFormat appengine/index/generated/zh-hans/soy.js --srcs appengine/index/template.soy
	python build-app.py index zh-hans

puzzle-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/puzzle/generated/zh-hans/soy.js --srcs appengine/puzzle/template.soy
	python build-app.py puzzle zh-hans

maze-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/maze/generated/zh-hans/soy.js --srcs appengine/maze/template.soy
	python build-app.py maze zh-hans

bird-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/bird/generated/zh-hans/soy.js --srcs appengine/bird/template.soy
	python build-app.py bird zh-hans

turtle-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/turtle/generated/zh-hans/soy.js --srcs appengine/turtle/template.soy
	python build-app.py turtle zh-hans

movie-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/movie/generated/zh-hans/soy.js --srcs appengine/movie/template.soy
	python build-app.py movie zh-hans

music-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/music/generated/zh-hans/soy.js --srcs appengine/music/template.soy
	python build-app.py music zh-hans

pond-docs-zh-hans:
	mkdir -p appengine/pond/generated/zh-hans/
	$(SOY_COMPILER) --outputPathFormat appengine/pond/docs/generated/zh-hans/soy.js --srcs appengine/pond/docs/template.soy
	python build-app.py pond/docs zh-hans

pond-tutor-zh-hans: pond-common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/pond/tutor/generated/zh-hans/soy.js --srcs appengine/pond/tutor/template.soy
	python build-app.py pond/tutor zh-hans

pond-duck-zh-hans: pond-common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/pond/duck/generated/zh-hans/soy.js --srcs appengine/pond/duck/template.soy
	python build-app.py pond/duck zh-hans

genetics-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/genetics/generated/zh-hans/soy.js --srcs appengine/genetics/template.soy
	python build-app.py genetics zh-hans

gallery-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/gallery/generated/zh-hans/soy.js --srcs appengine/gallery/template.soy
	python build-app.py gallery zh-hans

pond-common-zh-hans: common-zh-hans
	$(SOY_COMPILER) --outputPathFormat appengine/pond/generated/zh-hans/soy.js --srcs appengine/pond/template.soy

common-zh-hans:
	$(SOY_COMPILER) --outputPathFormat appengine/generated/zh-hans/soy.js --srcs appengine/template.soy

zh-hans: index-zh-hans puzzle-zh-hans maze-zh-hans bird-zh-hans turtle-zh-hans movie-zh-hans music-zh-hans pond-docs-zh-hans pond-tutor-zh-hans pond-duck-zh-hans genetics-zh-hans gallery-zh-hans

languages:
	$(SOY_EXTRACTOR) --outputFile extracted_msgs.xlf --srcs $(ALL_TEMPLATES)
	i18n/xliff_to_json.py --xlf extracted_msgs.xlf --templates $(ALL_TEMPLATES)
	@for app in $(ALL_JSON); do \
	  mkdir -p appengine/$$app/generated; \
	  i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/$$app/generated --template appengine/$$app/template.soy --key_file json/keys.json json/*.json; \
	done
	@for app in $(USER_APPS); do \
	  python build-app.py $$app; \
	done

langs:
	$(SOY_EXTRACTOR) --outputFile extracted_msgs.xlf --srcs $(ALL_TEMPLATES)
	i18n/xliff_to_json.py --xlf extracted_msgs.xlf --templates $(ALL_TEMPLATES)

	# index,puzzle,maze,bird,turtle,movie,music,pond/docs,pond,pond/tutor,pond/duck,gallery
	mkdir -p appengine/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/generated --template appengine/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/index/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/index/generated --template appengine/index/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/puzzle/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/puzzle/generated --template appengine/puzzle/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/maze/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/maze/generated --template appengine/maze/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/bird/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/bird/generated --template appengine/bird/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/turtle/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/turtle/generated --template appengine/turtle/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/movie/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/movie/generated --template appengine/movie/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/music/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/music/generated --template appengine/music/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/pond/docs/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/pond/docs/generated --template appengine/pond/docs/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/pond/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/pond/generated --template appengine/pond/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/pond/tutor/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/pond/tutor/generated --template appengine/pond/tutor/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/pond/duck/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/pond/duck/generated --template appengine/pond/duck/template.soy --key_file json/keys.json json/*.json; \
	mkdir -p appengine/gallery/generated; \
	i18n/json_to_js.py --path_to_jar third-party --output_dir appengine/gallery/generated --template appengine/gallery/template.soy --key_file json/keys.json json/*.json; \
	
	# index,puzzle,maze,bird,turtle,movie,music,pond/docs,pond,pond/tutor,pond/duck,gallery
	python build-app.py index zh-hans; \
	python build-app.py puzzle zh-hans; \
	python build-app.py maze zh-hans; \
	python build-app.py bird zh-hans; \
	python build-app.py turtle zh-hans; \
	python build-app.py movie zh-hans; \
	python build-app.py music zh-hans; \
	python build-app.py pond/docs zh-hans; \
	python build-app.py pond zh-hans; \
	python build-app.py pond/tutor zh-hans; \
	python build-app.py pond/duck zh-hans; \
	python build-app.py gallery zh-hans; \

deps:
	mkdir -p third-party
	@# All following commands are in third-party, use backslashes to keep them on the same line as the cd command.
	cd third-party; \
	svn checkout https://github.com/google/closure-library/trunk/closure/bin/build build; \
	wget -N https://dl.google.com/closure-templates/closure-templates-for-javascript-latest.zip; \
	unzip -o closure-templates-for-javascript-latest.zip SoyToJsSrcCompiler.jar; \
	unzip -o closure-templates-for-javascript-latest.zip -d ../$(APP_ENGINE_THIRD_PARTY) soyutils_usegoog.js; \
	wget -N https://dl.google.com/closure-templates/closure-templates-msg-extractor-latest.zip; \
	unzip -o closure-templates-msg-extractor-latest.zip SoyMsgExtractor.jar; \
	wget -N https://dl.google.com/closure-compiler/compiler-latest.zip; \
	unzip -o compiler-latest.zip -x COPYING README.md; \
	mv -f closure-compiler-v*.jar closure-compiler.jar; \
	chmod +x build/closurebuilder.py

	mkdir -p $(APP_ENGINE_THIRD_PARTY)
	svn checkout https://github.com/google/closure-library/trunk/closure/goog/ $(APP_ENGINE_THIRD_PARTY)/goog
	svn checkout https://github.com/google/closure-library/trunk/third_party/closure/goog/ $(APP_ENGINE_THIRD_PARTY)/third_party_goog
	svn checkout https://github.com/ajaxorg/ace-builds/trunk/src-min-noconflict/ $(APP_ENGINE_THIRD_PARTY)/ace
	svn checkout https://github.com/google/blockly/branches/develop/ $(APP_ENGINE_THIRD_PARTY)/blockly
	svn checkout https://github.com/mudcube/MIDI.js/trunk/@365 $(APP_ENGINE_THIRD_PARTY)/midi-js
	svn checkout https://github.com/CreateJS/SoundJS/trunk/lib/ $(APP_ENGINE_THIRD_PARTY)/SoundJS
	svn checkout https://github.com/gleitz/midi-js-soundfonts/trunk/FluidR3_GM/acoustic_guitar_nylon-mp3/ $(APP_ENGINE_THIRD_PARTY)/midi-js-soundfonts/guitar
	svn checkout https://github.com/gleitz/midi-js-soundfonts/trunk/FluidR3_GM/acoustic_grand_piano-mp3/ $(APP_ENGINE_THIRD_PARTY)/midi-js-soundfonts/piano
	svn checkout https://github.com/gleitz/midi-js-soundfonts/trunk/FluidR3_GM/banjo-mp3/ $(APP_ENGINE_THIRD_PARTY)/midi-js-soundfonts/banjo
	svn checkout https://github.com/gleitz/midi-js-soundfonts/trunk/FluidR3_GM/choir_aahs-mp3/ $(APP_ENGINE_THIRD_PARTY)/midi-js-soundfonts/choir
	svn checkout https://github.com/gleitz/midi-js-soundfonts/trunk/FluidR3_GM/flute-mp3/ $(APP_ENGINE_THIRD_PARTY)/midi-js-soundfonts/flute
	svn checkout https://github.com/gleitz/midi-js-soundfonts/trunk/FluidR3_GM/melodic_tom-mp3/ $(APP_ENGINE_THIRD_PARTY)/midi-js-soundfonts/drum
	svn checkout https://github.com/gleitz/midi-js-soundfonts/trunk/FluidR3_GM/trumpet-mp3/ $(APP_ENGINE_THIRD_PARTY)/midi-js-soundfonts/trumpet
	svn checkout https://github.com/gleitz/midi-js-soundfonts/trunk/FluidR3_GM/violin-mp3/ $(APP_ENGINE_THIRD_PARTY)/midi-js-soundfonts/violin

	@# messages.js confuses the compiler by also providing "Blockly.Msg.en".
	rm $(APP_ENGINE_THIRD_PARTY)/blockly/msg/messages.js
	svn checkout https://github.com/NeilFraser/JS-Interpreter/trunk/ $(APP_ENGINE_THIRD_PARTY)/JS-Interpreter
	java -jar third-party/closure-compiler.jar\
	 --js appengine/third-party/JS-Interpreter/acorn.js\
	 --js appengine/third-party/JS-Interpreter/interpreter.js\
	 --js_output_file appengine/third-party/JS-Interpreter/compiled.js

clean: clean-languages clean-deps

clean-languages:
	rm -rf appengine/$(ALL_JSON)/generated
	rm -f json/keys.json

clean-deps:
	rm -rf appengine/third-party
	rm -rf third-party

# Prevent non-traditional rules from exiting with no changes.
.PHONY: deps
