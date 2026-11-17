.class Lcom/fusepowered/vast/activity/VASTActivity$1;
.super Ljava/lang/Object;
.source "VASTActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/vast/activity/VASTActivity;->createOverlay(Landroid/widget/RelativeLayout$LayoutParams;)V
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
    .line 271
    iput-object p1, p0, Lcom/fusepowered/vast/activity/VASTActivity$1;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fusepowered/vast/activity/VASTActivity$1;->this$0:Lcom/fusepowered/vast/activity/VASTActivity;

    invoke-static {v0}, Lcom/fusepowered/vast/activity/VASTActivity;->access$000(Lcom/fusepowered/vast/activity/VASTActivity;)V

    .line 275
    const/4 v0, 0x0

    return v0
.end method
