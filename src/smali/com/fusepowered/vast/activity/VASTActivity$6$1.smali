.class Lcom/fusepowered/vast/activity/VASTActivity$6$1;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/activity/VASTActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/vast/activity/VASTActivity$6;


# direct methods
.method constructor <init>(Lcom/fusepowered/vast/activity/VASTActivity$6;)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/fusepowered/vast/activity/VASTActivity$6$1;->this$1:Lcom/fusepowered/vast/activity/VASTActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity$6$1;->this$1:Lcom/fusepowered/vast/activity/VASTActivity$6;

    iget-object v0, v0, Lcom/fusepowered/vast/activity/VASTActivity$6;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v0}, Lcom/fusepowered/vast/activity/VASTActivity;->access$500(Lcom/fusepowered/vast/activity/VASTActivity;)Lcom/fusepowered/vast/activity/PlayerControls;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fusepowered/vast/activity/PlayerControls;->setVisibility(I)V

    .line 774
    return-void
.end method
