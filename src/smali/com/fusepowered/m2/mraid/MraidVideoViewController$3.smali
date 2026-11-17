.class Lcom/fusepowered/m2/mraid/MraidVideoViewController$3;
.super Ljava/lang/Object;
.source "MraidVideoViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mraid/MraidVideoViewController;->createInterstitialCloseButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mraid/MraidVideoViewController;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mraid/MraidVideoViewController;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController$3;->this$0:Lcom/fusepowered/m2/mraid/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController$3;->this$0:Lcom/fusepowered/m2/mraid/MraidVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->access$300(Lcom/fusepowered/m2/mraid/MraidVideoViewController;)Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;->onFinish()V

    .line 101
    return-void
.end method
