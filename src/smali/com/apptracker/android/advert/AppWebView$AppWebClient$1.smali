.class Lcom/apptracker/android/advert/AppWebView$AppWebClient$1;
.super Ljava/lang/Object;
.source "ab"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apptracker/android/advert/AppWebView$AppWebClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic m:Lcom/apptracker/android/advert/AppWebView$AppWebClient;


# direct methods
.method constructor <init>(Lcom/apptracker/android/advert/AppWebView$AppWebClient;)V
    .locals 0
    .param p1, "arg0"    # Lcom/apptracker/android/advert/AppWebView$AppWebClient;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/apptracker/android/advert/AppWebView$AppWebClient$1;->m:Lcom/apptracker/android/advert/AppWebView$AppWebClient;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 555
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 299
    return v0
.end method
