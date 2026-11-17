.class Lcom/fusepowered/nx/videoplayer/VideoActivity$3;
.super Ljava/lang/Object;
.source "VideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/nx/videoplayer/VideoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/videoplayer/VideoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/videoplayer/VideoActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$3;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fusepowered/nx/videoplayer/VideoActivity$3;->this$0:Lcom/fusepowered/nx/videoplayer/VideoActivity;

    invoke-virtual {v0}, Lcom/fusepowered/nx/videoplayer/VideoActivity;->finish()V

    .line 115
    return-void
.end method
