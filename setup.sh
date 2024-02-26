NAME=flutter_web_test_deploy
BRANCH=main
curl -fsSL "https://github.com/rpede/$NAME/archive/refs/heads/$BRANCH.zip" -o $BRANCH.zip
unzip -nD $BRANCH.zip -x README.md -x img/
mv $NAME-$BRANCH/* $NAME-$BRANCH/.* ./
rm $BRANCH.zip
rmdir $NAME-$BRANCH
flutter pub add 'dev:flutter_test:{"sdk":"flutter"}'  'dev:integration_test:{"sdk":"flutter"}'