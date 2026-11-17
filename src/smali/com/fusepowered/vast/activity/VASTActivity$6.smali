.class Lcom/fusepowered/vast/activity/VASTActivity$6;
.super Ljava/util/TimerTask;
.source "VASTActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/activity/VASTActivity;->startToolBarTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/vast/activity/VASTActivity;


# direct methods
.method constructor <init>(Lcom/fusepowered/vast/activity/VASTActivity;)V
    .locals 0

    .prologue
    .line 767
    iput-object p1, p0, Lcom/fusepowered/vast/activity/VASTActivity$6;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity$6;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v0}, Lcom/fusepowered/vast/activity/VASTActivity;->access$600(Lcom/fusepowered/vast/activity/VASTActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/vast/activity/VASTActivity$6$1;

    invoke-direct {v1, p0}, Lcom/fusepowered/vast/activity/VASTActivity$6$1;-><init>(Lcom/fusepowered/vast/activity/VASTActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 776
    return-void
.end method
