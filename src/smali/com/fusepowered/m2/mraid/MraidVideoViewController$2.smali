.class Lcom/fusepowered/m2/mraid/MraidVideoViewController$2;
.super Ljava/lang/Object;
.source "MraidVideoViewController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mraid/MraidVideoViewController;-><init>(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;Lcom/fusepowered/m2/mobileads/BaseVideoViewController$BaseVideoViewControllerListener;)V
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
    .line 48
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController$2;->this$0:Lcom/fusepowered/m2/mraid/MraidVideoViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController$2;->this$0:Lcom/fusepowered/m2/mraid/MraidVideoViewController;

    invoke-static {v0}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->access$000(Lcom/fusepowered/m2/mraid/MraidVideoViewController;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidVideoViewController$2;->this$0:Lcom/fusepowered/m2/mraid/MraidVideoViewController;

    invoke-static {v0, v1}, Lcom/fusepowered/m2/mraid/MraidVideoViewController;->access$200(Lcom/fusepowered/m2/mraid/MraidVideoViewController;Z)V

    .line 54
    return v1
.end method
