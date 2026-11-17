.class public Lcom/apptracker/android/module/AppModuleLoader;
.super Ljava/lang/Object;
.source "x"

# interfaces
.implements Lcom/apptracker/android/listener/AppModuleLoaderListener;


# static fields
.field static M:J

.field private static synthetic h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static synthetic i:Landroid/os/Handler;

.field private static synthetic k:Z

.field private static synthetic m:Z


# instance fields
.field private synthetic A:Landroid/content/Context;

.field private synthetic G:I

.field private synthetic b:Lcom/apptracker/android/listener/AppModuleListener;

.field private synthetic d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/apptracker/android/module/AppAd;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic e:Z

.field private synthetic f:Lcom/apptracker/android/module/AppModuleControllerBase;

.field private synthetic g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 156
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleLoader;->k:Z

    .line 211
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleLoader;->m:Z

    .line 252
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/apptracker/android/module/AppModuleLoader;->i:Landroid/os/Handler;

    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/apptracker/android/module/AppModuleLoader;->h:Ljava/util/HashMap;

    .line 237
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/apptracker/android/module/AppModuleLoader;->M:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-boolean v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->e:Z

    .line 63
    iput v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->G:I

    .line 28
    return-void
.end method

.method private synthetic B()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 1063
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 876
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1445
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1038
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method static synthetic B(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/module/AppModuleControllerBase;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    return-object v0
.end method

.method private synthetic B(Z)Ljava/lang/String;
    .locals 5
    .param p1, "arg0"    # Z

    .prologue
    const/4 v1, 0x0

    .line 443
    const-string v0, ""

    .line 452
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    if-nez p1, :cond_0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "2F;\\3L\u0000M>]>v0E;\u0007+Q+"

    invoke-static {v3}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 528
    :goto_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 402
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 485
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 581
    :goto_2
    return-object v0

    .line 540
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v3, "T^]DUTfUXEXnOX]TV\u001fMIM"

    invoke-static {v3}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 581
    goto :goto_2

    .line 541
    :cond_1
    :try_start_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 366
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 308
    goto :goto_2
.end method

.method private synthetic B(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 7
    .param p1, "arg0"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/apptracker/android/module/AppAd;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 456
    .line 261
    invoke-direct {p0}, Lcom/apptracker/android/module/AppModuleLoader;->B()Landroid/graphics/Rect;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 265
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 507
    :try_start_0
    const-string v0, "config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 512
    :goto_0
    :try_start_1
    const-string v0, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u001eY/d0M*E:e0H;L-\t;H+Hb"

    invoke-static {v6}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "html"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 562
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 406
    invoke-static {v2}, Lcom/apptracker/android/module/AppAd;->createWithJsonData(Lorg/json/JSONObject;)Lcom/apptracker/android/module/AppAd;

    move-result-object v2

    .line 579
    if-eqz v2, :cond_2

    .line 457
    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getHeight()I

    move-result v5

    if-nez v5, :cond_0

    .line 450
    invoke-virtual {v2, v3}, Lcom/apptracker/android/module/AppAd;->setHeight(I)V

    .line 434
    :cond_0
    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getWidth()I

    move-result v3

    if-nez v3, :cond_1

    .line 332
    invoke-virtual {v2, v4}, Lcom/apptracker/android/module/AppAd;->setWidth(I)V

    .line 429
    :cond_1
    invoke-virtual {v2, v0}, Lcom/apptracker/android/module/AppAd;->setHtml(Ljava/lang/String;)V

    .line 493
    :cond_2
    if-eqz v2, :cond_3

    .line 273
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_3
    return-object v1

    .line 476
    :catch_0
    move-exception v0

    .line 379
    const-string v2, "APTr"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "xAI|VUL]\\}VP]TK\u0011SBV_\u0019P]\u0011Z^WWPV\u0019AXCJXWV\u0019TKCVC\u0004"

    invoke-static {v6}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    .line 479
    :catch_1
    move-exception v0

    .line 385
    const-string v0, "APTr"

    const-string v5, "xAI|VUL]\\}VP]TK\u0011SBV_\u0019P]\u0011IPKBP_^\u0011\\CK^K"

    invoke-static {v5}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppModuleLoader;)Lcom/apptracker/android/listener/AppModuleListener;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    return-object v0
.end method

.method private synthetic G(Lcom/apptracker/android/module/AppAd;)Lcom/apptracker/android/module/AppModuleControllerBase;
    .locals 2
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppAd;

    .prologue
    .line 1462
    invoke-virtual {p1}, Lcom/apptracker/android/module/AppAd;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    new-instance v0, Lcom/apptracker/android/module/AppVideoModuleController;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/apptracker/android/module/AppVideoModuleController;-><init>(Landroid/content/Context;Lcom/apptracker/android/listener/AppModuleLoaderListener;)V

    .line 1081
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/apptracker/android/module/AppModuleController;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/apptracker/android/module/AppModuleController;-><init>(Landroid/content/Context;Lcom/apptracker/android/listener/AppModuleLoaderListener;)V

    goto :goto_0
.end method

.method static synthetic G()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/apptracker/android/module/AppModuleLoader;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppModuleLoader;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;
    .param p1, "arg1"    # Lorg/json/JSONObject;

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lcom/apptracker/android/module/AppModuleLoader;->m(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private synthetic G(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 11
    .param p1, "arg0"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/apptracker/android/module/AppAd;",
            ">;"
        }
    .end annotation

    .prologue
    const-wide/32 v4, 0x1baf80

    .line 590
    invoke-direct {p0}, Lcom/apptracker/android/module/AppModuleLoader;->B()Landroid/graphics/Rect;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 533
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 489
    const-string v1, "RXRQT}^N_U^XUmXTTVDM"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 522
    const-string v1, "<H<A:l\'Y6[&"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 382
    :try_start_0
    const-string v2, "RXRQT}^N_U^XUmXTTVDM"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v2

    if-eqz v2, :cond_1

    .line 372
    :try_start_1
    const-string v2, "J>J7L\u001bF(G3F>M\u000b@2L0\\+"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/apptracker/android/module/AppModuleLoader;->G:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, p1

    .line 373
    .end local p1    # "arg0":Lorg/json/JSONObject;
    .local v0, "arg0":Lorg/json/JSONObject;
    :goto_0
    :try_start_2
    const-string v2, "<H<A:l\'Y6[&"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    if-eqz v2, :cond_0

    .line 592
    :try_start_3
    const-string v2, "ZPZY\\tAAPC@"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v2

    move-wide v4, v2

    .line 353
    :cond_0
    :goto_1
    :try_start_4
    const-string v2, "XUJ"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 338
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    .line 270
    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-lt v2, v9, :cond_2

    .line 561
    .end local v0    # "arg0":Lorg/json/JSONObject;
    :goto_3
    return-object v1

    .line 315
    .restart local p1    # "arg0":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 597
    const-string v3, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IPKB\\|VUL]\\b\\COTKuXEX|L]MXxU\u0019RXRQT}^N_U^XUmXTTVDM\u0011IPKE\u0019tAR\\AMXV_\u0004"

    invoke-static {v9}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, p1

    .line 373
    .end local p1    # "arg0":Lorg/json/JSONObject;
    .restart local v0    # "arg0":Lorg/json/JSONObject;
    goto :goto_0

    .line 349
    :catch_1
    move-exception v2

    .line 524
    const-string v3, "APTr"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Y>[,L\u0012F;\\3L\u000cL-_:[\u001bH+H\u0012\\3]6h;\t<H<A:l\'Y6[:\t/H-]\u007fl\'J:Y+@0Gb"

    invoke-static {v9}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 529
    .end local v0    # "arg0":Lorg/json/JSONObject;
    :catch_2
    move-exception v1

    .line 501
    const-string v1, "APTr"

    const-string v2, "\u001eY/d0M*E:e0H;L-\t\u001a[-F-\t6G\u007fJ0G)L-]6G8\t,]-@1N\u007f]0\t\u001eM\u007fF=C:J+"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const/4 v1, 0x0

    goto :goto_3

    .line 342
    .restart local v0    # "arg0":Lorg/json/JSONObject;
    :cond_2
    :try_start_5
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 458
    invoke-static {v2}, Lcom/apptracker/android/module/AppAd;->createWithJsonData(Lorg/json/JSONObject;)Lcom/apptracker/android/module/AppAd;

    move-result-object v2

    .line 413
    if-eqz v2, :cond_4

    .line 343
    invoke-virtual {v2, v4, v5}, Lcom/apptracker/android/module/AppAd;->setCacheExpirye(J)V

    .line 481
    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getHeight()I

    move-result v10

    if-nez v10, :cond_3

    .line 546
    invoke-virtual {v2, v6}, Lcom/apptracker/android/module/AppAd;->setHeight(I)V

    .line 593
    :cond_3
    invoke-virtual {v2}, Lcom/apptracker/android/module/AppAd;->getWidth()I

    move-result v10

    if-nez v10, :cond_4

    .line 360
    invoke-virtual {v2, v7}, Lcom/apptracker/android/module/AppAd;->setWidth(I)V

    .line 351
    :cond_4
    if-eqz v2, :cond_5

    .line 477
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 270
    :cond_5
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2
.end method

.method private synthetic G(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Z
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 111
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    .line 25
    if-nez p3, :cond_1

    .line 137
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleLoader;->k:Z

    if-nez v0, :cond_0

    .line 175
    const-string v0, "APTr"

    const-string v1, "]VP]XWVt^]DUT\u0019EQT\u0019AKTOXVDJ\u0011T^]DUT\u0019]VP]XWV\u0019YXB\u0019_VE\u0019S\\TW\u0011Z^TAUTMT]"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "\u0012F;\\3L\u007f[:X*L,]\u007fH3[:H;P\u007f@1\t/[0N-L,Zq"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->uw(Ljava/lang/String;)V

    .line 398
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string v0, "APTr"

    const-string v1, "QPWUUXWV\u0017\u001f\u0017"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleLoader;->k:Z

    .line 190
    :cond_1
    sget-object v0, Lcom/apptracker/android/module/AppModuleLoader;->i:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptracker/android/module/AppModuleCache;->init(Landroid/content/Context;)V

    .line 127
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    const-string v0, "`,Z*L\u007f^6]7\t<F1G:J+@0Ge\t6G+L-G:]\u007fG0]\u007fH)H6E>K3Lq"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    const-string v1, "network error"

    invoke-static {v0, p2, v1, p3}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-static {p2}, Lcom/apptracker/android/module/AppModuleCache;->getAvailableAdFromCache(Ljava/lang/String;)Lcom/apptracker/android/module/AppAd;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_3

    .line 51
    invoke-direct {p0, v0, p3}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppAd;Z)Z

    goto :goto_0

    .line 116
    :cond_3
    if-nez p3, :cond_4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "w^\u0019p]\u0011XGXXUP[]\\\u0011_^K\u0011U^ZPMXV_\u0019"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0007\u007fy3L>Z:\t-\\1\t3F>M\u0012F;\\3L\u000bF\u001cH<A:\t9@-Z+"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->uw(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    const-string v1, "ad not ready"

    invoke-static {v0, p2, v1, p3}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 214
    :cond_4
    sget-object v0, Lcom/apptracker/android/module/AppModuleLoader;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {p2}, Lcom/apptracker/android/module/AppVideoModuleController;->isPlacementDownloading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    :cond_5
    const-string v0, "|VUL]\\\u0011ZPZY\\U\u0019C\\@LTJE\u0019PUC\\P]H\u0019XW\u0011ICVVKTJB\u0017"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/util/AppLog;->uw(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_6
    sget-object v0, Lcom/apptracker/android/module/AppModuleLoader;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    sget-object v1, Lcom/apptracker/android/request/AppRequest$TYPE;->e:Lcom/apptracker/android/request/AppRequest$TYPE;

    .line 187
    invoke-static {}, Lcom/apptracker/android/track/AppTracker;->getApiKey()Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/apptracker/android/module/AppModuleLoader$1;

    invoke-direct {v7, p0, p2, p3}, Lcom/apptracker/android/module/AppModuleLoader$1;-><init>(Lcom/apptracker/android/module/AppModuleLoader;Ljava/lang/String;Z)V

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .line 108
    invoke-static/range {v0 .. v7}, Lcom/apptracker/android/request/AppRequest;->requestModule(Landroid/content/Context;Lcom/apptracker/android/request/AppRequest$TYPE;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/apptracker/android/listener/AppListener;)Z

    goto/16 :goto_0
.end method

.method private synthetic G(Lcom/apptracker/android/module/AppAd;ZZ)V
    .locals 4
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppAd;
    .param p2, "arg1"    # Z
    .param p3, "arg2"    # Z

    .prologue
    .line 939
    invoke-virtual {p1}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 1485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 615
    :goto_0
    sget-wide v2, Lcom/apptracker/android/module/AppModuleLoader;->M:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 1384
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 859
    :cond_0
    sput-wide v0, Lcom/apptracker/android/module/AppModuleLoader;->M:J

    .line 1425
    invoke-virtual {p1, v0, v1}, Lcom/apptracker/android/module/AppAd;->setTimeStamp(J)V

    .line 964
    invoke-virtual {p1}, Lcom/apptracker/android/module/AppAd;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1559
    if-nez p2, :cond_1

    .line 896
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    invoke-static {p1, v0, p0, p3}, Lcom/apptracker/android/module/AppVideoModuleController;->loadVideoFile(Lcom/apptracker/android/module/AppAd;Ljava/lang/String;Lcom/apptracker/android/module/AppModuleLoader;Z)Z

    .line 1508
    :cond_1
    :goto_1
    return-void

    .line 1461
    :cond_2
    invoke-virtual {p1}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v0

    goto :goto_0

    .line 1321
    :cond_3
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/apptracker/android/module/AppAd;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/apptracker/android/module/AppModuleCache;->getAdFileName(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    .line 1120
    invoke-static {v0, p1}, Lcom/apptracker/android/module/AppModuleCache;->B(Ljava/io/File;Lcom/apptracker/android/module/AppAd;)Z

    goto :goto_1
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppModuleLoader;Ljava/util/List;)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;
    .param p1, "arg1"    # Ljava/util/List;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleLoader;->d:Ljava/util/List;

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/module/AppModuleLoader;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;
    .param p1, "arg1"    # Z

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Z)V

    return-void
.end method

.method private synthetic G(Z)V
    .locals 7
    .param p1, "arg0"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 904
    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/apptracker/android/module/AppVideoModuleController;->isPlacementDownloading(Ljava/lang/String;)Z

    move-result v5

    .line 829
    if-eqz p1, :cond_4

    .line 1463
    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    if-eqz v3, :cond_3

    .line 708
    const-string v1, "ad download ok"

    invoke-virtual {p0, v1, p1}, Lcom/apptracker/android/module/AppModuleLoader;->onModuleCompleted(Ljava/lang/String;Z)V

    .line 1532
    .end local p0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    :cond_0
    :goto_1
    return-void

    .line 1463
    .restart local p0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptracker/android/module/AppAd;

    .line 726
    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->isVideo()Z

    move-result v6

    if-nez v6, :cond_2

    move v3, v4

    .line 1245
    :cond_2
    invoke-virtual {v1, v4}, Lcom/apptracker/android/module/AppAd;->setCache(I)V

    .line 1563
    invoke-direct {p0, v1, v5, p1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppAd;ZZ)V

    move-object v1, v2

    goto :goto_0

    .line 1231
    :cond_3
    iget v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->G:I

    if-eqz v1, :cond_0

    .line 1406
    sget-object v1, Lcom/apptracker/android/module/AppModuleLoader;->i:Landroid/os/Handler;

    new-instance v2, Lcom/apptracker/android/module/AppModuleLoader$2;

    invoke-direct {v2, p0, p1}, Lcom/apptracker/android/module/AppModuleLoader$2;-><init>(Lcom/apptracker/android/module/AppModuleLoader;Z)V

    .line 881
    iget v3, p0, Lcom/apptracker/android/module/AppModuleLoader;->G:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    .line 1406
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 965
    :cond_4
    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v0, p0

    .line 951
    .end local p0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    .local v0, "this":Lcom/apptracker/android/module/AppModuleLoader;
    :goto_3
    iget-object v1, v0, Lcom/apptracker/android/module/AppModuleLoader;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v2

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    .line 667
    if-nez v3, :cond_0

    .line 1125
    const-string v1, "no fill"

    invoke-virtual {p0, v1, p1}, Lcom/apptracker/android/module/AppModuleLoader;->onModuleCompleted(Ljava/lang/String;Z)V

    goto :goto_1

    .line 965
    .end local v0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    .restart local p0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptracker/android/module/AppAd;

    .line 978
    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getCache()I

    move-result v6

    if-nez v6, :cond_6

    .line 1279
    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->isVideo()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1111
    invoke-direct {p0, v1, p1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppAd;Z)Z

    move-object v0, p0

    .end local p0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    .restart local v0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    move v3, v4

    .line 949
    goto :goto_3

    .end local v0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    .restart local p0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    :cond_6
    move-object v1, v2

    .line 965
    goto :goto_2

    .line 951
    .end local p0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    .restart local v0    # "this":Lcom/apptracker/android/module/AppModuleLoader;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apptracker/android/module/AppAd;

    .line 755
    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getCache()I

    move-result v6

    if-nez v6, :cond_8

    move-object v1, v2

    .line 1566
    goto :goto_4

    .line 1557
    :cond_8
    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->getCache()I

    move-result v6

    if-eq v6, v4, :cond_9

    if-eqz v3, :cond_a

    .line 747
    :cond_9
    invoke-direct {p0, v1, v5, p1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppAd;ZZ)V

    move-object v1, v2

    .line 871
    goto :goto_4

    .line 1110
    :cond_a
    if-nez v3, :cond_b

    invoke-virtual {v1}, Lcom/apptracker/android/module/AppAd;->isVideo()Z

    move-result v6

    if-nez v6, :cond_b

    .line 733
    invoke-direct {p0, v1, p1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppAd;Z)Z

    move-object v1, v2

    move v3, v4

    .line 1053
    goto :goto_4

    .line 1536
    :cond_b
    invoke-direct {p0, v1, v5, p1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppAd;ZZ)V

    move-object v1, v2

    .line 951
    goto :goto_4
.end method

.method private synthetic G(Lcom/apptracker/android/module/AppAd;Z)Z
    .locals 4
    .param p1, "arg0"    # Lcom/apptracker/android/module/AppAd;
    .param p2, "arg1"    # Z

    .prologue
    .line 926
    if-nez p1, :cond_0

    .line 1495
    const-string v0, "APTr"

    const-string v1, "h/Y\u0012F;\\3L\u0013F>M:[qY-F<L,Z\u001eM\u007fH;\t6Z\u007fG*E3"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1201
    :cond_0
    if-eqz p2, :cond_1

    .line 1438
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppModuleControllerBase;->onCached(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V

    .line 683
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1242
    :cond_1
    invoke-direct {p0, p1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lcom/apptracker/android/module/AppAd;)Lcom/apptracker/android/module/AppModuleControllerBase;

    move-result-object v0

    iput-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    .line 1452
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    invoke-virtual {v0, p2}, Lcom/apptracker/android/module/AppModuleControllerBase;->setModuleToCacheRequest(Z)V

    .line 1083
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    if-eqz v0, :cond_2

    .line 953
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    invoke-virtual {v0, v1}, Lcom/apptracker/android/module/AppModuleControllerBase;->setListener(Lcom/apptracker/android/listener/AppModuleListener;)V

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->A:Landroid/content/Context;

    iget-object v2, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/apptracker/android/module/AppModuleControllerBase;->loadingModule(Landroid/content/Context;Ljava/lang/String;Lcom/apptracker/android/module/AppAd;)V

    .line 1021
    sget-object v0, Lcom/apptracker/android/module/AppModuleLoader;->i:Landroid/os/Handler;

    new-instance v1, Lcom/apptracker/android/module/AppModuleLoader$3;

    invoke-direct {v1, p0}, Lcom/apptracker/android/module/AppModuleLoader$3;-><init>(Lcom/apptracker/android/module/AppModuleLoader;)V

    .line 658
    const-wide/16 v2, 0x2710

    .line 1021
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public static isModuleVisible()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/apptracker/android/module/AppModuleLoader;->m:Z

    return v0
.end method

.method static synthetic m(Lcom/apptracker/android/module/AppModuleLoader;)Ljava/util/List;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/module/AppModuleLoader;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->d:Ljava/util/List;

    return-object v0
.end method

.method private synthetic m(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .param p1, "arg0"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/apptracker/android/module/AppAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    const-string v0, ">M,"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    const-string v0, "T"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :try_start_0
    const-string v0, "2"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 424
    const-string v1, "J"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    .line 444
    invoke-static {v0}, Lcom/apptracker/android/track/AppTracker;->setSessionStore(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/apptracker/android/module/AppModuleLoader;->G(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    :goto_1
    return-object v0

    .line 490
    :catch_0
    move-exception v0

    .line 430
    const-string v1, "APTr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "h/Y\u0012F;\\3L\u0013F>M:[\u007fC,F1\t\u000cL,Z6F1z+F-L\u007fY>[,@1N\u007fL-[0[b"

    invoke-static {v3}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0, p1}, Lcom/apptracker/android/module/AppModuleLoader;->B(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method public static onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;
    .param p1, "arg1"    # Ljava/lang/String;
    .param p2, "arg2"    # Ljava/lang/String;
    .param p3, "arg3"    # Z

    .prologue
    .line 418
    if-nez p3, :cond_0

    .line 375
    const/4 v1, 0x1

    sput-boolean v1, Lcom/apptracker/android/module/AppModuleLoader;->k:Z

    .line 305
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    .line 397
    const-string v2, "t^]DUT\u0019"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u007fO>@3L;\t+F\u007fJ>J7Le"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    move-object v0, p0

    .line 591
    .end local p0    # "arg0":Lcom/apptracker/android/listener/AppModuleListener;
    .local v0, "arg0":Lcom/apptracker/android/listener/AppModuleListener;
    :goto_0
    if-eqz v0, :cond_1

    .line 291
    invoke-interface {p0, p1, p2, p3}, Lcom/apptracker/android/listener/AppModuleListener;->onModuleFailed(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 544
    :cond_1
    return-void

    .line 499
    .end local v0    # "arg0":Lcom/apptracker/android/listener/AppModuleListener;
    .restart local p0    # "arg0":Lcom/apptracker/android/listener/AppModuleListener;
    :cond_2
    const-string v2, "t^]DUT\u0019"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\t9H6E:M\u007f]0\t3F>Me"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apptracker/android/util/AppLog;->ue(Ljava/lang/String;)V

    move-object v0, p0

    .line 591
    .end local p0    # "arg0":Lcom/apptracker/android/listener/AppModuleListener;
    .restart local v0    # "arg0":Lcom/apptracker/android/listener/AppModuleListener;
    goto :goto_0
.end method

.method public static openExternalURL(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "arg0"    # Landroid/content/Context;
    .param p1, "arg1"    # Ljava/lang/String;

    .prologue
    .line 796
    if-eqz p1, :cond_0

    .line 838
    new-instance v0, Landroid/content/Intent;

    const-string v1, "H1M-F6Mq@1]:G+\u0007>J+@0Gq\u007f\u0016l\u0008"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1342
    const/high16 v1, 0x40080000    # 2.125f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1455
    const/high16 v1, 0x18000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 767
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1054
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyModule()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppModuleControllerBase;->destroyModule()V

    .line 389
    :cond_0
    return-void
.end method

.method public getContentFromResponse(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 526
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public loadingModule(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 12
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/apptracker/android/module/AppModuleLoader;->G(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 49
    return-void
.end method

.method public loadingModuleToCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/apptracker/android/module/AppModuleLoader;->G(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V

    .line 344
    return-void
.end method

.method public onModuleCompleted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Z

    .prologue
    .line 207
    const-string v0, "data error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "connection timeout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const-string v0, "ad download ok"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    if-eqz p2, :cond_1

    .line 160
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/apptracker/android/module/AppModuleControllerBase;->onCached(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    const-string v0, "no fill"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 235
    const-string v0, "APTr"

    const-string v1, "t~}dutftkcvcf\u007fvn\u007fxu}\u0019"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    iget-object v1, p0, Lcom/apptracker/android/module/AppModuleLoader;->g:Ljava/lang/String;

    const-string v2, "no fill"

    invoke-static {v0, v1, v2, p2}, Lcom/apptracker/android/module/AppModuleLoader;->onFailed(Lcom/apptracker/android/listener/AppModuleListener;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 242
    :cond_4
    if-nez p2, :cond_1

    .line 219
    const/4 v0, 0x1

    sput-boolean v0, Lcom/apptracker/android/module/AppModuleLoader;->k:Z

    goto :goto_0
.end method

.method public onModuleDisplayed(Z)V
    .locals 0
    .param p1, "arg0"    # Z

    .prologue
    .line 151
    sput-boolean p1, Lcom/apptracker/android/module/AppModuleLoader;->m:Z

    .line 247
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppModuleControllerBase;->pause()V

    .line 162
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/apptracker/android/module/AppModuleLoader;->f:Lcom/apptracker/android/module/AppModuleControllerBase;

    invoke-virtual {v0}, Lcom/apptracker/android/module/AppModuleControllerBase;->resume()V

    .line 257
    :cond_0
    return-void
.end method

.method public setListener(Lcom/apptracker/android/listener/AppModuleListener;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/listener/AppModuleListener;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/apptracker/android/module/AppModuleLoader;->b:Lcom/apptracker/android/listener/AppModuleListener;

    .line 205
    return-void
.end method
