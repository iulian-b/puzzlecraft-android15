.class public Lcom/fusepowered/as/utils/WebViewJSRunner;
.super Ljava/lang/Object;
.source "WebViewJSRunner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runIt(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/fusepowered/as/utils/WebViewJSRunner$1;

    invoke-direct {v0, p0, p1}, Lcom/fusepowered/as/utils/WebViewJSRunner$1;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 25
    return-void
.end method
