.class Lcom/fusepowered/l1/PlayerActivity$2;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/l1/PlayerActivity;->initRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/l1/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/l1/PlayerActivity;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/fusepowered/l1/PlayerActivity$2;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 200
    iget-object v2, p0, Lcom/fusepowered/l1/PlayerActivity$2;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v2}, Lcom/fusepowered/l1/PlayerActivity;->access$400(Lcom/fusepowered/l1/PlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 201
    .local v1, "position":I
    iget-object v2, p0, Lcom/fusepowered/l1/PlayerActivity$2;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v2}, Lcom/fusepowered/l1/PlayerActivity;->access$300(Lcom/fusepowered/l1/PlayerActivity;)Lcom/fusepowered/l1/AdView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/fusepowered/l1/AdView;->setVideoCurrentTime(I)V

    .line 202
    iget-object v2, p0, Lcom/fusepowered/l1/PlayerActivity$2;->this$0:Lcom/fusepowered/l1/PlayerActivity;

    invoke-static {v2}, Lcom/fusepowered/l1/PlayerActivity;->access$400(Lcom/fusepowered/l1/PlayerActivity;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 203
    .local v0, "duration":I
    if-ge v1, v0, :cond_0

    .line 204
    invoke-static {}, Lcom/fusepowered/l1/PlayerActivity;->access$600()Landroid/os/Handler;

    move-result-object v2

    invoke-static {}, Lcom/fusepowered/l1/PlayerActivity;->access$500()Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 206
    :cond_0
    return-void
.end method
