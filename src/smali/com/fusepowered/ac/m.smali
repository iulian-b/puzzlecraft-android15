.class Lcom/fusepowered/ac/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/webkit/WebView;

.field b:Landroid/app/Activity;

.field c:Lcom/fusepowered/ac/ADCVideo;

.field d:Landroid/os/Handler;

.field e:Ljava/lang/Runnable;

.field f:Lcom/fusepowered/ac/AdColonyAd;

.field g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/fusepowered/ac/ADCVideo;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/fusepowered/ac/m;->a:Landroid/webkit/WebView;

    .line 51
    iput-object p3, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    .line 52
    iput-object p1, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/fusepowered/ac/m$1;

    invoke-direct {v0, p0}, Lcom/fusepowered/ac/m$1;-><init>(Lcom/fusepowered/ac/m;)V

    iput-object v0, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    .line 61
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 133
    sput-boolean v4, Lcom/fusepowered/ac/a;->A:Z

    .line 134
    iget-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    const-string v0, "html5_interaction"

    iget-object v1, p0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v2, v2, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/AdColony_Screenshots/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "AdColony_Screenshot_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/fusepowered/ac/m;->a:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 145
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 146
    invoke-virtual {v1, v6}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 149
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/Pictures"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Pictures/AdColony_Screenshots"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 153
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 154
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 163
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 166
    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 167
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {v2, v1, v4, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 168
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 169
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    .line 170
    iget-object v1, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x0

    new-instance v3, Lcom/fusepowered/ac/m$2;

    invoke-direct {v3, p0}, Lcom/fusepowered/ac/m$2;-><init>(Lcom/fusepowered/ac/m;)V

    invoke-static {v1, v2, v0, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    :goto_1
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 180
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Error saving screenshot."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 181
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] FileNotFoundException in MRAIDCommandTakeScreenshot"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    goto :goto_1

    .line 183
    :catch_1
    move-exception v0

    .line 185
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Error saving screenshot."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] IOException in MRAIDCommandTakeScreenshot"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    goto :goto_1

    .line 156
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 65
    const-string v0, "mraid://"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 69
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    aget-object v0, v1, v2

    move-object v3, v0

    move-object v0, v1

    .line 82
    :goto_0
    if-eqz v0, :cond_1

    aget-object v0, v0, v9

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 87
    array-length v5, v0

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_2

    aget-object v6, v0, v1

    .line 89
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    .line 90
    const-string v8, "="

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v9

    .line 91
    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 76
    :cond_0
    const/4 v1, 0x0

    move-object v3, v0

    move-object v0, v1

    .line 77
    goto :goto_0

    .line 83
    :cond_1
    new-array v0, v2, [Ljava/lang/String;

    goto :goto_1

    .line 95
    :cond_2
    sget-object v0, Lcom/fusepowered/ac/a;->H:Lcom/fusepowered/ac/AdColonyAd;

    iput-object v0, p0, Lcom/fusepowered/ac/m;->f:Lcom/fusepowered/ac/AdColonyAd;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"ad_slot\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/m;->f:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v1, v1, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v1, v1, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    .line 98
    const-string v0, "send_adc_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "type"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->b(Ljava/lang/String;)V

    .line 114
    :cond_3
    :goto_3
    const-string v0, "adc_bridge.nativeCallComplete()"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->f(Ljava/lang/String;)V

    .line 115
    return-void

    .line 99
    :cond_4
    const-string v0, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/fusepowered/ac/m;->b()V

    goto :goto_3

    .line 100
    :cond_5
    const-string v0, "open_store"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    if-nez v0, :cond_6

    const-string v0, "item"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->c(Ljava/lang/String;)V

    goto :goto_3

    .line 101
    :cond_6
    const-string v0, "open"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    if-nez v0, :cond_7

    const-string v0, "url"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->d(Ljava/lang/String;)V

    goto :goto_3

    .line 102
    :cond_7
    const-string v0, "expand"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "url"

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->e(Ljava/lang/String;)V

    goto :goto_3

    .line 103
    :cond_8
    const-string v0, "create_calendar_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    if-nez v0, :cond_9

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->b(Ljava/util/HashMap;)V

    goto :goto_3

    .line 104
    :cond_9
    const-string v0, "mail"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    if-nez v0, :cond_a

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->c(Ljava/util/HashMap;)V

    goto :goto_3

    .line 105
    :cond_a
    const-string v0, "sms"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    if-nez v0, :cond_b

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->d(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 106
    :cond_b
    const-string v0, "tel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    if-nez v0, :cond_c

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->e(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 107
    :cond_c
    const-string v0, "custom_event"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->f(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 108
    :cond_d
    const-string v0, "launch_app"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    if-nez v0, :cond_e

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 109
    :cond_e
    const-string v0, "check_app_presence"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->h(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 110
    :cond_f
    const-string v0, "auto_play"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->i(Ljava/util/HashMap;)V

    goto/16 :goto_3

    .line 111
    :cond_10
    const-string v0, "save_screenshot"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/fusepowered/ac/m;->a()V

    goto/16 :goto_3

    .line 112
    :cond_11
    const-string v0, "social_post"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v4}, Lcom/fusepowered/ac/m;->a(Ljava/util/HashMap;)V

    goto/16 :goto_3
.end method

.method a(Ljava/util/HashMap;)V
    .locals 5

    .prologue
    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    .line 120
    iget-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    const-string v0, "url"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v3, "text/plain"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    const-string v3, "android.intent.extra.TEXT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Share this post using..."

    invoke-static {v2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 198
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandClose called"

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 199
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 200
    sget-object v0, Lcom/fusepowered/ac/a;->K:Lcom/fusepowered/ac/a$a;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/a$a;->a(Lcom/fusepowered/ac/AdColonyAd;)V

    .line 201
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 192
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandSendADCEvent called with type: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 193
    iget-object v0, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {p1, v0}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 194
    return-void
.end method

.method b(Ljava/util/HashMap;)V
    .locals 24

    .prologue
    .line 292
    sget-object v4, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v5, "ADC [info] MRAIDCommandCreateCalendarEvent called with parameters: "

    invoke-virtual {v4, v5}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 294
    const/4 v4, 0x1

    sput-boolean v4, Lcom/fusepowered/ac/a;->A:Z

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    const-string v4, "html5_interaction"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v6, v6, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v4, v5, v6}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 301
    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 304
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'hh:mmZ"

    invoke-direct {v13, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v14, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'hh:mm:ssZ"

    invoke-direct {v14, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v15, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 309
    const-string v4, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 310
    const-string v4, "location"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    const-string v4, "start"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 312
    const-string v4, "end"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 313
    const-string v4, "summary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 314
    const-string v4, "recurrence"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 315
    const-string v5, ""

    .line 316
    const-string v4, ""

    .line 318
    const-wide/16 v8, 0x0

    .line 321
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 322
    const-string v20, "\""

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v20, "{"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v20, "}"

    const-string v21, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 325
    const-string v6, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 327
    const-string v4, ","

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v21, v5, v4

    .line 329
    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    aget-object v22, v22, v23

    .line 330
    const-string v23, ":"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x1

    aget-object v21, v21, v23

    .line 331
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    :cond_0
    const-string v4, "expires"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 334
    const-string v4, "frequency"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 335
    sget-object v6, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v19, "Calendar Recurrence - "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 336
    sget-object v6, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v19, "Calendar Recurrence - frequency = "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 337
    sget-object v6, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v19, "Calendar Recurrence - expires =  "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    :cond_1
    move-object v6, v5

    move-object v5, v4

    .line 340
    const-string v4, ""

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 342
    const-string v4, "description"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 348
    :cond_2
    :try_start_0
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 349
    :try_start_1
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v7

    .line 357
    :goto_1
    if-nez v4, :cond_a

    .line 361
    :try_start_2
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 362
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    move-object v11, v4

    .line 373
    :goto_2
    :try_start_3
    invoke-virtual {v15, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v4

    .line 380
    :goto_3
    if-nez v11, :cond_3

    .line 382
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v5, "Unable to create Calendar Event."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 447
    :goto_4
    return-void

    .line 351
    :catch_0
    move-exception v4

    move-object v4, v7

    :goto_5
    move-object v7, v11

    goto :goto_1

    .line 364
    :catch_1
    move-exception v11

    move-object v11, v4

    goto :goto_2

    .line 375
    :catch_2
    move-exception v4

    move-object v4, v10

    goto :goto_3

    .line 387
    :cond_3
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 388
    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    .line 389
    const-wide/16 v6, 0x0

    .line 392
    if-eqz v4, :cond_4

    .line 394
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    .line 398
    :cond_4
    const-string v4, "DAILY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 400
    const-wide/32 v8, 0x15180

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    .line 417
    :goto_6
    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 419
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.EDIT"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "vnd.android.cursor.item/event"

    .line 420
    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v8, "title"

    .line 421
    invoke-virtual {v4, v8, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v8, "description"

    .line 422
    move-object/from16 v0, v16

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v8, "beginTime"

    .line 423
    invoke-virtual {v4, v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v8, "endTime"

    .line 424
    move-wide/from16 v0, v18

    invoke-virtual {v4, v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v8, "rrule"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FREQ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ";"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "COUNT="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 425
    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 426
    sget-object v5, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v8, "Calendar Recurrence - count = "

    invoke-virtual {v5, v8}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v5

    long-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Lcom/fusepowered/ac/l;->b(D)Lcom/fusepowered/ac/l;

    .line 441
    :goto_7
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    .line 443
    :catch_3
    move-exception v4

    .line 445
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v5, "Unable to create Calendar Event."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    .line 402
    :cond_5
    const-string v4, "WEEKLY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 404
    const-wide/32 v8, 0x93a80

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto/16 :goto_6

    .line 406
    :cond_6
    const-string v4, "MONTHLY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 408
    const-wide/32 v8, 0x2820a8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto/16 :goto_6

    .line 410
    :cond_7
    const-string v4, "YEARLY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 412
    const-wide/32 v8, 0x1e187e0

    div-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto/16 :goto_6

    .line 430
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.EDIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "vnd.android.cursor.item/event"

    .line 431
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "title"

    .line 432
    invoke-virtual {v4, v5, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "description"

    .line 433
    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "beginTime"

    .line 434
    invoke-virtual {v4, v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "endTime"

    .line 435
    move-wide/from16 v0, v18

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v4

    goto :goto_7

    .line 351
    :catch_4
    move-exception v7

    goto/16 :goto_5

    :cond_9
    move-wide v6, v8

    goto/16 :goto_6

    :cond_a
    move-object v11, v4

    goto/16 :goto_2
.end method

.method c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 205
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandOpenStore called with item: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 207
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    .line 208
    iget-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 211
    const-string v0, "html5_interaction"

    iget-object v1, p0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v2, v2, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 214
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 220
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 224
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Unable to open store."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method c(Ljava/util/HashMap;)V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 451
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandMail called with parameters: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 453
    sput-boolean v2, Lcom/fusepowered/ac/a;->A:Z

    .line 454
    iget-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 456
    const-string v0, "subject"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 457
    const-string v0, "body"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    const-string v0, "to"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 461
    const-string v3, "html5_interaction"

    iget-object v4, p0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v5, v5, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v3, v4, v5}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 466
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 467
    const-string v4, "plain/text"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 469
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    .line 472
    :catch_0
    move-exception v0

    .line 475
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Unable to launch email client."

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 230
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandOpen called with url: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 232
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    .line 233
    iget-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 236
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    const-string v1, "adcvideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    const-string v1, "adcvideo"

    const-string v2, "http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    invoke-virtual {v1, v0}, Lcom/fusepowered/ac/ADCVideo;->a(Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void

    .line 243
    :cond_0
    const-string v1, "youtube"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 248
    const/16 v1, 0x76

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 249
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "vnd.youtube:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 250
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 255
    invoke-virtual {p0, p1}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v1, "safari"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "safari"

    const-string v2, "http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 258
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 262
    :cond_2
    const-string v1, "browser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 265
    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v2, v2, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v1, v2}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 266
    const-string v1, "browser"

    const-string v2, "http"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 267
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 268
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 274
    :cond_3
    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v3, v3, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 275
    sput-object v0, Lcom/fusepowered/ac/ACBActivity;->url:Ljava/lang/String;

    .line 276
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-class v2, Lcom/fusepowered/ac/ACBActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 277
    iget-object v1, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method d(Ljava/util/HashMap;)V
    .locals 6

    .prologue
    .line 482
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandSMS called with parameters: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 484
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    .line 485
    iget-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 487
    const-string v0, "to"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 488
    const-string v0, "body"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 491
    const-string v2, "html5_interaction"

    iget-object v3, p0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v4, v4, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v2, v3, v4}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 496
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sms:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "sms_body"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 497
    iget-object v1, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 503
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Failed to create sms."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 284
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandExpand called with url: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 287
    const-string v0, "adc_bridge.fireChangeEvent({state:\'expanded\'});"

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->f(Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method e(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 509
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandTel called with parameters: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 511
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    .line 512
    iget-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 514
    const-string v0, "number"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v3, v3, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 522
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :goto_0
    return-void

    .line 525
    :catch_0
    move-exception v0

    .line 528
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Failed to dial number."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 581
    iget-object v0, p0, Lcom/fusepowered/ac/m;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 582
    return-void
.end method

.method f(Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 534
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandSendCustomADCEvent called with parameters: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 535
    const-string v0, "event_type"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"event_type\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"ad_slot\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fusepowered/ac/m;->f:Lcom/fusepowered/ac/AdColonyAd;

    iget-object v1, v1, Lcom/fusepowered/ac/AdColonyAd;->h:Lcom/fusepowered/ac/n$y;

    iget-object v1, v1, Lcom/fusepowered/ac/n$y;->k:Lcom/fusepowered/ac/ag;

    iget v1, v1, Lcom/fusepowered/ac/ag;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    const-string v1, "custom_event"

    iget-object v2, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v2, v2, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v1, v0, v2}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 538
    return-void
.end method

.method g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 587
    if-nez p1, :cond_0

    const-string v0, ""

    .line 588
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method g(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 542
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandLaunchApp called with parameters: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 544
    const/4 v0, 0x1

    sput-boolean v0, Lcom/fusepowered/ac/a;->A:Z

    .line 545
    iget-object v0, p0, Lcom/fusepowered/ac/m;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/fusepowered/ac/m;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    const-string v1, "html5_interaction"

    iget-object v2, p0, Lcom/fusepowered/ac/m;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/fusepowered/ac/m;->c:Lcom/fusepowered/ac/ADCVideo;

    iget-object v3, v3, Lcom/fusepowered/ac/ADCVideo;->F:Lcom/fusepowered/ac/AdColonyAd;

    invoke-static {v1, v2, v3}, Lcom/fusepowered/ac/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/fusepowered/ac/AdColonyAd;)V

    .line 555
    :try_start_0
    iget-object v1, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 556
    iget-object v1, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_0
    return-void

    .line 558
    :catch_0
    move-exception v0

    .line 560
    iget-object v0, p0, Lcom/fusepowered/ac/m;->b:Landroid/app/Activity;

    const-string v1, "Failed to launch external application."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method h(Ljava/util/HashMap;)V
    .locals 4

    .prologue
    .line 567
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandCheckAppPresence called with parameters: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 568
    const-string v0, "handle"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 569
    invoke-static {v0}, Lcom/fusepowered/ac/ab;->a(Ljava/lang/String;)Z

    move-result v1

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adc_bridge.fireAppPresenceEvent(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\',"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fusepowered/ac/m;->f(Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method i(Ljava/util/HashMap;)V
    .locals 2

    .prologue
    .line 576
    sget-object v0, Lcom/fusepowered/ac/l;->a:Lcom/fusepowered/ac/l;

    const-string v1, "ADC [info] MRAIDCommandCheckAutoPlay called with parameters: "

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/l;->a(Ljava/lang/String;)Lcom/fusepowered/ac/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fusepowered/ac/l;->b(Ljava/lang/Object;)Lcom/fusepowered/ac/l;

    .line 577
    return-void
.end method
