FROM oldwebtoday/base-wine-browser

USER browser
WORKDIR /home/browser

ADD wine.tar.gz /home/browser/

RUN mkdir fontconfig
COPY fonts.conf /home/browser/fontconfig/

COPY prefs.js /home/browser/prefs.js
COPY proxy_prefs.js /home/browser/proxy_prefs.js
COPY custom_user.reg /home/browser/custom_user.reg

COPY run.sh /app/run.sh

CMD ["/app/run.sh"]

LABEL wr.name="Netscape" \
      wr.version="4.8" \
      wr.os="windows" \
      wr.caps.java="1.1.5" \
      wr.caps.midi="1"

LABEL wr.icon=iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAADAFBMVEUAJAAAAAAAAFUAAKoAAP8AJFUAJKoAJP8ASQAASVUASaoASf8AbQAAbVUAbaoAbf8AkgAAklUAkqoAkv8AtgAAtlUAtqoAtv8A2wAA21UA26oA2/8A/wAA/1UA/6oA//8kAAAkAFUkAKokAP8kJAAkJFUkJKokJP8kSQAkSVUkSaokSf8kbQAkbVUkbaokbf8kkgAkklUkkqokkv8ktgAktlUktqoktv8k2wAk21Uk26ok2/8k/wAk/1Uk/6ok//9JAABJAFVJAKpJAP9JJABJJFVJJKpJJP9JSQBJSVVJSapJSf9JbQBJbVVJbapJbf9JkgBJklVJkqpJkv9JtgBJtlVJtqpJtv9J2wBJ21VJ26pJ2/9J/wBJ/1VJ/6pJ//9tAABtAFVtAKptAP9tJABtJFVtJKptJP9tSQBtSVVtSaptSf9tbQBtbVVtbaptbf9tkgBtklVtkqptkv9ttgBttlVttqpttv9t2wBt21Vt26pt2/9t/wBt/1Vt/6pt//+SAACSAFWSAKqSAP+SJACSJFWSJKqSJP+SSQCSSVWSSaqSSf+SbQCSbVWSbaqSbf+SkgCSklWSkqqSkv+StgCStlWStqqStv+S2wCS21WS26qS2/+S/wCS/1WS/6qS//+2AAC2AFW2AKq2AP+2JAC2JFW2JKq2JP+2SQC2SVW2Saq2Sf+2bQC2bVW2baq2bf+2kgC2klW2kqq2kv+2tgC2tlW2tqq2tv+22wC221W226q22/+2/wC2/1W2/6q2///bAADbAFXbAKrbAP/bJADbJFXbJKrbJP/bSQDbSVXbSarbSf/bbQDbbVXbbarbbf/bkgDbklXbkqrbkv/btgDbtlXbtqrbtv/b2wDb21Xb26rb2//b/wDb/1Xb/6rb////AAD/AFX/AKr/AP//JAD/JFX/JKr/JP//SQD/SVX/Sar/Sf//bQD/bVX/bar/bf//kgD/klX/kqr/kv//tgD/tlX/tqr/tv//2wD/21X/26r/2////wD//1X//6r///9p+e8hAAAAAXRSTlMAQObYZgAAAAFiS0dEAIgFHUgAAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQffCwwVNzC+iXvwAAABxUlEQVQ4y11TS47lIAzEwBak5JxD1HCOSSQ4DC29q8yGg6ChXYa8T4MSAlVUysaozaL33hvG3Wo7x9Wjen4zpXlr/4Hhee6tsy6SmjPZBZk6yAgq+ElKLVS67o/xKKRljVUT48rxl5s7jK6j1lqoaVEswJVw11PHGLXkg7rm+Sk4e8B+vHciU0o3xK03/3fiUGho8Gpo9MbBUGO7C1fAeZWbs5oJYJAFoy8FwIip98HaoR2Wh/hiAJ+52E03Y+j+p5EjrE8GD12i3PgPZOoVDY+knozWh59ROKIzcB6yJ0NTu2EYfUhe8WTORA1ZT3sIThRuD3ZLZYzv7BcBjP8K7v0mJ+jtCQV2od4k7BdLTA/WXYEJeb8VlBBQLENOw9sEhXJ8EDZkTXzu1kT2UA//qbAvBvswUyGYdwKqYTL4LMIlHm6XbSk4O49rN8f0QC8CKgrxgcGcEkFwq1RmoiS+m8EdHogW3KQe0F2ithjvbVWUs9tBa8tvWMm98FLfSh/1F3hXdZymTJhlHajQi8AO412/uSLMxIJEKZaUMlZduOn6fIwqCpkol1iieEhPOT6r71HOTCcrXOEKc/X1O9wY3Cu0mNbiD4awWJPUcx0bAAAAAElFTkSuQmCC

