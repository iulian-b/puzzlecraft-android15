.class public Lcom/chillingo/liboffers/gui/interaction/gestures/TapGestureRecognizer;
.super Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;
.source "TapGestureRecognizer.java"


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/interaction/gestures/TapGestureRecognizer;->events:Ljava/util/ArrayList;

    .line 19
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/interaction/gestures/TapGestureRecognizer;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    return-void
.end method
