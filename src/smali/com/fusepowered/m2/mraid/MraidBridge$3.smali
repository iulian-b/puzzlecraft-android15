.class Lcom/fusepowered/m2/mraid/MraidBridge$3;
.super Ljava/lang/Object;
.source "MraidBridge.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/mraid/MraidBridge;->attachView(Lcom/fusepowered/m2/mraid/MraidBridge$MraidWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

.field final synthetic val$gestureDetector:Lcom/fusepowered/m2/mobileads/ViewGestureDetector;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/mraid/MraidBridge;Lcom/fusepowered/m2/mobileads/ViewGestureDetector;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/fusepowered/m2/mraid/MraidBridge$3;->this$0:Lcom/fusepowered/m2/mraid/MraidBridge;

    iput-object p2, p0, Lcom/fusepowered/m2/mraid/MraidBridge$3;->val$gestureDetector:Lcom/fusepowered/m2/mobileads/ViewGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/fusepowered/m2/mraid/MraidBridge$3;->val$gestureDetector:Lcom/fusepowered/m2/mobileads/ViewGestureDetector;

    invoke-virtual {v0, p2}, Lcom/fusepowered/m2/mobileads/ViewGestureDetector;->sendTouchEvent(Landroid/view/MotionEvent;)V

    .line 173
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 176
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
