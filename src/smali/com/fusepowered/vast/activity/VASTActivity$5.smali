.class Lcom/fusepowered/vast/activity/VASTActivity$5;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/activity/VASTActivity;->createPostroll()V
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
    .line 380
    iput-object p1, p0, Lcom/fusepowered/vast/activity/VASTActivity$5;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity$5;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v0}, Lcom/fusepowered/vast/activity/VASTActivity;->access$400(Lcom/fusepowered/vast/activity/VASTActivity;)V

    .line 384
    return-void
.end method
