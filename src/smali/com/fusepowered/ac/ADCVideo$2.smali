.class Lcom/fusepowered/ac/ADCVideo$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ac/ADCVideo;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fusepowered/ac/ADCVideo;


# direct methods
.method constructor <init>(Lcom/fusepowered/ac/ADCVideo;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/fusepowered/ac/ADCVideo$2;->a:Lcom/fusepowered/ac/ADCVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "media_player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo$2;->a:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, p0, Lcom/fusepowered/ac/ADCVideo$2;->a:Lcom/fusepowered/ac/ADCVideo;

    iget-object v1, v1, Lcom/fusepowered/ac/ADCVideo;->H:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/fusepowered/ac/ADCVideo;->setContentView(Landroid/view/View;)V

    .line 563
    iget-object v0, p0, Lcom/fusepowered/ac/ADCVideo$2;->a:Lcom/fusepowered/ac/ADCVideo;

    iget-object v0, v0, Lcom/fusepowered/ac/ADCVideo;->J:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 564
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fusepowered/ac/ADCVideo;->g:Z

    .line 565
    return-void
.end method
