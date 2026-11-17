.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$10;
.super Landroid/webkit/WebViewClient;
.source "VastVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createIconView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastIcon;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

.field final synthetic val$vastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Lcom/fusepowered/m2/mobileads/VastIcon;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$10;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$10;->val$vastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 807
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$10;->val$vastIcon:Lcom/fusepowered/m2/mobileads/VastIcon;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$10;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    invoke-virtual {v1}, Lcom/fusepowered/m2/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/fusepowered/m2/mobileads/VastIcon;->handleClick(Landroid/content/Context;Ljava/lang/String;)V

    .line 808
    const/4 v0, 0x1

    return v0
.end method
