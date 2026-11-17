.class Lcom/fusepowered/m2/mobileads/VastVideoViewController$8;
.super Landroid/webkit/WebViewClient;
.source "VastVideoViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mobileads/VastVideoViewController;->createCompanionAdView(Landroid/content/Context;Lcom/fusepowered/m2/mobileads/VastCompanionAd;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$vastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mobileads/VastVideoViewController;Lcom/fusepowered/m2/mobileads/VastCompanionAd;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 754
    iput-object p1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$8;->this$0:Lcom/fusepowered/m2/mobileads/VastVideoViewController;

    iput-object p2, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$8;->val$vastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    iput-object p3, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$8;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 757
    iget-object v0, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$8;->val$vastCompanionAd:Lcom/fusepowered/m2/mobileads/VastCompanionAd;

    iget-object v1, p0, Lcom/fusepowered/m2/mobileads/VastVideoViewController$8;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, p2}, Lcom/fusepowered/m2/mobileads/VastCompanionAd;->handleClick(Landroid/content/Context;ILjava/lang/String;)V

    .line 758
    return v2
.end method
