.class Lcom/apptracker/android/advert/AppWebView$AppWebClient;
.super Landroid/webkit/WebViewClient;
.source "ab"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptracker/android/advert/AppWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppWebClient"
.end annotation


# instance fields
.field private synthetic A:I

.field private synthetic G:Landroid/content/Context;

.field private synthetic b:Z

.field private synthetic d:Z

.field private synthetic e:Z

.field private synthetic f:Z

.field final synthetic g:Lcom/apptracker/android/advert/AppWebView;

.field private synthetic h:Z

.field private synthetic k:[Ljava/lang/String;

.field private synthetic m:Lcom/apptracker/android/listener/AppModuleControllerListener;


# direct methods
.method public constructor <init>(Lcom/apptracker/android/advert/AppWebView;Landroid/content/Context;Lcom/apptracker/android/listener/AppModuleControllerListener;)V
    .locals 4
    .param p1, "arg0"    # Lcom/apptracker/android/advert/AppWebView;
    .param p2, "arg1"    # Landroid/content/Context;
    .param p3, "arg2"    # Lcom/apptracker/android/listener/AppModuleControllerListener;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    const/4 v0, 0x5

    iput-object p1, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    .line 182
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 9
    iput-boolean v3, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->f:Z

    .line 56
    iput-boolean v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->d:Z

    .line 119
    iput-boolean v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->h:Z

    .line 12
    iput-boolean v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->e:Z

    .line 68
    iput-boolean v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->b:Z

    .line 186
    iput v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->A:I

    .line 224
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "u^XUP_^\u001f\u0017\u001f\u0017aUTXB\\\u0011nPPE\u0018"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "\rL<L6_6G8\u0007q\u0007qz+H1M\u007fk&"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "pU\\VBM\u0011]^WT\u0017\u001f\u0017"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\rL+[6L)@1Nq\u0007q\u0007qy3L>Z:\t\u0008H6]~"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "c\\@LTJEP_^\u0011]TMPP]J"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->k:[Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->G:Landroid/content/Context;

    .line 223
    iput-object p3, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    .line 126
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 287
    :try_start_0
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0G\u000fH8L\u0019@1@,A:Me"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v0, "TPKZ\\E\u0003\u001e\u0016"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "7]+Ye\u0006pD>[4L+\u0007>G;[0@;\u0007<F2"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "YMEIB\u0003\u001e\u0016\\XCRTM\u001fX_]CVX]\u001fZ^T"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "A+]/Ze\u0006pY3H&\u00078F0N3LqJ0Dp"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QEMA\u0003\u001e\u0016AUP@\u001f^^VVUT\u0017RV\\\u0016"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*Z:G>]6_:\u0014n"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "E\\]\u0003"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->k(Lcom/apptracker/android/advert/AppWebView;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 470
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0}, Lcom/apptracker/android/listener/AppModuleControllerListener;->isModuleLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    const-string v1, "network error"

    invoke-interface {v0, v1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->onAppModuleFailed(Ljava/lang/String;)V

    .line 531
    :goto_1
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0, p1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->destroyAd(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .line 392
    const-string v1, "APTr"

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 316
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->showInternetDialog(Landroid/content/Context;)V

    goto :goto_1

    .line 544
    :cond_4
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->G(Lcom/apptracker/android/advert/AppWebView;Z)V

    .line 396
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    iget-object v1, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v1}, Lcom/apptracker/android/advert/AppWebView;->m(Lcom/apptracker/android/advert/AppWebView;)Z

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->setLoading(Landroid/webkit/WebView;Z)V

    .line 421
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->d:Z

    if-nez v0, :cond_5

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->f:Z

    .line 344
    :cond_5
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "F1y>N:o6G6Z7L;\t<H3E:M\u007f\u0004\u007fE0H;|-E\u007f\u0014\u007f"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v2}, Lcom/apptracker/android/advert/AppWebView;->B(Lcom/apptracker/android/advert/AppWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0015\u0011U^XU\\U\u0019\u000c\u0019"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0005\u007f[:M6[:J+\tb"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->B(Lcom/apptracker/android/advert/AppWebView;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 583
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 262
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->f:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->d:Z

    if-nez v0, :cond_7

    .line 389
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->G(Lcom/apptracker/android/advert/AppWebView;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 345
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setVisibility(I)V

    .line 482
    :cond_6
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0, p1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->showElements(Landroid/webkit/WebView;)V

    .line 537
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0, p1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->onAppModuleLoaded(Landroid/webkit/WebView;)V

    .line 356
    const-string v0, "SPOPJRKXIE\u0003\\KPPU\u0017ALBQrQPWV\\\u0019B\u0016OX\\FXSUT\u001e\u000bMCLTD\u0018\u0002"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 436
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->d:Z

    .line 483
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0, p2}, Lcom/apptracker/android/advert/AppWebView;->G(Lcom/apptracker/android/advert/AppWebView;Ljava/lang/String;)V

    .line 431
    if-eqz p1, :cond_0

    .line 334
    invoke-virtual {p1}, Landroid/webkit/WebView;->requestFocus()Z

    goto/16 :goto_0

    .line 452
    :cond_9
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->f:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->d:Z

    if-nez v0, :cond_b

    .line 280
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 401
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 388
    :cond_a
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->b:Z

    if-nez v0, :cond_8

    .line 513
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "|\re\u007f]0\t3F>M\u007f@1\t1H+@)L\u007fK-F(Z:[\u007f\u0004\u007f"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-string v1, "PWUK^PU\u0017XWE\\_M\u001fXRMXV_\u0017gptn"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 552
    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->G:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 268
    iput-boolean v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->b:Z

    .line 402
    iput-boolean v1, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->e:Z

    .line 486
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0, p1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->destroyAd(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 454
    :cond_b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 64
    :try_start_0
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "F1y>N:z+H-]:Me"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->f:Z

    const/4 v0, 0x0

    .line 87
    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/webkit/WebView;->setPadding(IIII)V

    .line 51
    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 116
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->G(Lcom/apptracker/android/advert/AppWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setVisibility(I)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0, p1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->hideElements(Landroid/webkit/WebView;)V

    .line 72
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dK]\u0019EV\u0011[T\u0019]VP]T]\u0011P_\u0019EQT\u0019F\\SOX\\F\u0019\u001c\u0019"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "2H-B:]e\u0006p"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "QEMA\u0003\u001e\u0016\\XCRTM\u001fX_]CVX]\u001fZ^T"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A+]/Ze\u0006pD>[4L+\u0007>G;[0@;\u0007<F2"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "YMEIB\u0003\u001e\u0016AUP@\u001f^^VVUT\u0017RV\\\u0016"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "7]+Ye\u0006pY3H&\u00078F0N3LqJ0Dp"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "LB\\_XEPG\\\u000c\u0008"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "]:Ee"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    .line 30
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0, p1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->destroyAd(Landroid/webkit/WebView;)V

    .line 4
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-virtual {v0}, Lcom/apptracker/android/advert/AppWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/apptracker/android/module/AppModuleLoader;->openExternalURL(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    :cond_3
    :goto_0
    return-void

    .line 155
    :cond_4
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->h:Z

    if-nez v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->B(Lcom/apptracker/android/advert/AppWebView;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "afclose"

    .line 88
    iget-object v1, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    iget-object v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v2}, Lcom/apptracker/android/advert/AppWebView;->m(Lcom/apptracker/android/advert/AppWebView;)Z

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/apptracker/android/listener/AppModuleControllerListener;->setLoading(Landroid/webkit/WebView;Z)V

    .line 255
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    const-string v0, "APTr"

    const-string v1, "^WrU^JTz]PRR"

    invoke-static {v1}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0, p1}, Lcom/apptracker/android/listener/AppModuleControllerListener;->onCloseClick(Landroid/webkit/WebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 461
    const-string v1, "APTr"

    invoke-static {v1, v0}, Lcom/apptracker/android/util/AppLog;->printStackTrace(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 102
    :cond_5
    :try_start_1
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->e:Z

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->e:Z

    .line 62
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->m:Lcom/apptracker/android/listener/AppModuleControllerListener;

    invoke-interface {v0, p1, p2}, Lcom/apptracker/android/listener/AppModuleControllerListener;->onLinkClick(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 132
    :cond_6
    const-string v0, "APTr"

    const-string v1, "e6G4\t<E6J4L;\u0008~"

    invoke-static {v1}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 532
    :cond_7
    iget v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->A:I

    iget-object v1, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->k:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    .line 487
    const/4 v0, 0x0

    iput v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->A:I

    .line 368
    :cond_8
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->k:[Ljava/lang/String;

    iget v1, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->A:I

    aget-object v0, v0, v1

    .line 530
    iget-object v1, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    iget-object v2, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->G:Landroid/content/Context;

    const-string v3, ""

    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/apptracker/android/advert/AppWebView;->G(Lcom/apptracker/android/advert/AppWebView;Landroid/app/ProgressDialog;)V

    .line 425
    iget v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->A:I

    .line 313
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->L(Lcom/apptracker/android/advert/AppWebView;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/apptracker/android/advert/AppWebView$AppWebClient$1;

    invoke-direct {v1, p0}, Lcom/apptracker/android/advert/AppWebView$AppWebClient$1;-><init>(Lcom/apptracker/android/advert/AppWebView$AppWebClient;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 384
    :cond_9
    const-string v0, "TPKZ\\E\u0003\u001e\u0016"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "7]+Ye\u0006pD>[4L+\u0007>G;[0@;\u0007<F2"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "YMEIB\u0003\u001e\u0016\\XCRTM\u001fX_]CVX]\u001fZ^T"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "A+]/Ze\u0006pY3H&\u00078F0N3LqJ0Dp"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "QEMA\u0003\u001e\u0016AUP@\u001f^^VVUT\u0017RV\\\u0016"

    invoke-static {v0}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 497
    :cond_a
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V

    goto/16 :goto_0

    .line 292
    :cond_b
    const-string v0, "*Z:G>]6_:\u0014n"

    invoke-static {v0}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 542
    invoke-virtual {p1}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # Ljava/lang/String;

    .prologue
    .line 430
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tKCVC\u0019C\\R\\XOT]\u0011\u0014\u0011z^]T\u0004"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0005\u007fm:Z<[6Y+@0G\u007f\u0014\u007f"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001d\u0019WXXUdk}\u0019\u001c\u0019"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/16 v0, -0xa

    if-eq p2, v0, :cond_1

    .line 285
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    invoke-static {v0}, Lcom/apptracker/android/advert/AppWebView;->G(Lcom/apptracker/android/advert/AppWebView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->g:Lcom/apptracker/android/advert/AppWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/apptracker/android/advert/AppWebView;->setVisibility(I)V

    .line 281
    :cond_0
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "l-[0[\u007f[:J:@)L;\tr\t\u001cF;Lb"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u001d\u0019u\\BZCPAMXV_\u0019\u000c\u0019"

    invoke-static {v2}, Lcom/apptracker/android/advert/AppJSInterface;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u0005\u007fO>@3|\re\u007f\u0004\u007f"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->h:Z

    .line 557
    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/webkit/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 137
    const-string v0, "APTr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ",A0\\3M\u0010_:[-@;L\n[3e0H;@1N\u007f^6]7\t\n{\u0013\u0013\u007f"

    invoke-static {v2}, Lcom/apptracker/android/re/AppWakeLock;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apptracker/android/util/AppLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->f:Z

    if-nez v0, :cond_0

    .line 31
    iput-boolean v3, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->d:Z

    .line 259
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->f:Z

    .line 52
    iput-boolean v0, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient;->h:Z

    .line 101
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 248
    return v3
.end method
