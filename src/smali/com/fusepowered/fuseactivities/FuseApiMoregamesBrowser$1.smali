.class Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$1;
.super Landroid/webkit/WebViewClient;
.source "FuseApiMoregamesBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;


# direct methods
.method constructor <init>(Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$1;->this$0:Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 97
    const-string v1, "market://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 99
    .local v0, "market_intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser$1;->this$0:Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;

    invoke-virtual {v1, v0}, Lcom/fusepowered/fuseactivities/FuseApiMoregamesBrowser;->startActivity(Landroid/content/Intent;)V

    .line 105
    .end local v0    # "market_intent":Landroid/content/Intent;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 102
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
