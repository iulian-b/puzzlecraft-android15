.class Lcom/fusepowered/vast/activity/VASTActivity$8$1;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/activity/VASTActivity$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fusepowered/vast/activity/VASTActivity$8;


# direct methods
.method constructor <init>(Lcom/fusepowered/vast/activity/VASTActivity$8;)V
    .locals 0

    .prologue
    .line 927
    iput-object p1, p0, Lcom/fusepowered/vast/activity/VASTActivity$8$1;->this$1:Lcom/fusepowered/vast/activity/VASTActivity$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 930
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity$8$1;->this$1:Lcom/fusepowered/vast/activity/VASTActivity$8;

    iget-object v0, v0, Lcom/fusepowered/vast/activity/VASTActivity$8;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v0}, Lcom/fusepowered/vast/activity/VASTActivity;->access$500(Lcom/fusepowered/vast/activity/VASTActivity;)Lcom/fusepowered/vast/activity/PlayerControls;

    move-result-object v0

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v2, v3}, Lcom/fusepowered/vast/activity/PlayerControls;->update(J)V

    .line 931
    return-void
.end method
