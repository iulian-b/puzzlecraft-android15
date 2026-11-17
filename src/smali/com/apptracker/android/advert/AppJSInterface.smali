.class public Lcom/apptracker/android/advert/AppJSInterface;
.super Ljava/lang/Object;
.source "jb"


# static fields
.field public static final A:Ljava/lang/String; = "unmute"

.field public static final G:Ljava/lang/String; = "mute"

.field public static final M:Ljava/lang/String; = "stop"

.field public static final b:Ljava/lang/String; = "config"

.field public static final g:Ljava/lang/String; = "skip"

.field public static final k:Ljava/lang/String; = "replay"

.field public static final m:Ljava/lang/String; = "start"


# instance fields
.field private synthetic d:Landroid/content/Context;

.field private synthetic e:Z

.field private synthetic f:Lcom/apptracker/android/listener/AppModuleControllerListener;

.field private synthetic h:Lcom/apptracker/android/advert/AppWebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apptracker/android/listener/AppModuleControllerListener;Landroid/webkit/WebView;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Lcom/apptracker/android/listener/AppModuleControllerListener;
    .param p3, "arg2"    # Landroid/webkit/WebView;

    .prologue
    .line 218
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->e:Z

    .line 22
    iput-object p1, p0, Lcom/apptracker/android/advert/AppJSInterface;->d:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/apptracker/android/advert/AppJSInterface;->f:Lcom/apptracker/android/listener/AppModuleControllerListener;

    .line 194
    check-cast p3, Lcom/apptracker/android/advert/AppWebView;

    .end local p3    # "arg2":Landroid/webkit/WebView;
    iput-object p3, p0, Lcom/apptracker/android/advert/AppJSInterface;->h:Lcom/apptracker/android/advert/AppWebView;

    .line 246
    return-void
.end method

.method static synthetic B(Lcom/apptracker/android/advert/AppJSInterface;)Landroid/content/Context;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static G(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "arg0"    # Ljava/lang/String;

    .prologue
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v3, v0, [C

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v4, v1, -0x1

    xor-int/lit8 v0, v0, 0x39

    int-to-char v0, v0

    aput-char v0, v3, v1

    if-ltz v4, :cond_0

    add-int/lit8 v0, v4, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    xor-int/lit8 v1, v1, 0x31

    int-to-char v1, v1

    aput-char v1, v3, v4

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private synthetic G()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apptracker/android/advert/AppJSInterface$1;

    invoke-direct {v1, p0}, Lcom/apptracker/android/advert/AppJSInterface$1;-><init>(Lcom/apptracker/android/advert/AppJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/advert/AppJSInterface;Z)V
    .locals 0
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;
    .param p1, "arg1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/apptracker/android/advert/AppJSInterface;->e:Z

    return-void
.end method

.method static synthetic G(Lcom/apptracker/android/advert/AppJSInterface;)Z
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->e:Z

    return v0
.end method

.method static synthetic L(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/advert/AppWebView;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->h:Lcom/apptracker/android/advert/AppWebView;

    return-object v0
.end method

.method static synthetic m(Lcom/apptracker/android/advert/AppJSInterface;)Lcom/apptracker/android/listener/AppModuleControllerListener;
    .locals 1
    .param p0, "arg0"    # Lcom/apptracker/android/advert/AppJSInterface;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->f:Lcom/apptracker/android/listener/AppModuleControllerListener;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 70
    :try_start_0
    invoke-direct {p0}, Lcom/apptracker/android/advert/AppJSInterface;->G()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public controlMedia(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    .line 47
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apptracker/android/advert/AppJSInterface$2;

    invoke-direct {v1, p0, p1}, Lcom/apptracker/android/advert/AppJSInterface$2;-><init>(Lcom/apptracker/android/advert/AppJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 238
    .line 244
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apptracker/android/advert/AppJSInterface$3;

    invoke-direct {v1, p0, p1}, Lcom/apptracker/android/advert/AppJSInterface$3;-><init>(Lcom/apptracker/android/advert/AppJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    .line 17
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/apptracker/android/advert/AppJSInterface$4;

    invoke-direct {v1, p0, p1}, Lcom/apptracker/android/advert/AppJSInterface$4;-><init>(Lcom/apptracker/android/advert/AppJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public resourceLoaded(Z)V
    .locals 3
    .param p1, "arg0"    # Z
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 237
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "j\u0014[.x-E\u0010N\u0016M\u0005H\u0001\u000b\u0016N\u0017D\u0011Y\u0007N(D\u0005O\u0001OD_\u0016B\u0003L\u0001Y\u0001O^\u000b"

    invoke-static {v2}, Lcom/apptracker/android/util/AppFileEncryption;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "P"

    invoke-static {v2}, Lcom/apptracker/android/util/AppEncryption;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/apptracker/android/advert/AppJSInterface;->f:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v2}, Lcom/apptracker/android/listener/AppModuleControllerListener;->isDisplayOnComplete()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->f:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0}, Lcom/apptracker/android/listener/AppModuleControllerListener;->isDisplayOnComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/apptracker/android/advert/AppJSInterface;->h:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0, p1}, Lcom/apptracker/android/advert/AppWebView;->setResourceLoaded(Z)V

    .line 208
    :cond_0
    return-void
.end method
