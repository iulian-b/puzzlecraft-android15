.class public Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;
.super Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;
.source "PanGestureRecognizer.java"


# instance fields
.field private delta:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 2
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/chillingo/liboffers/gui/interaction/gestures/GestureRecognizer;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;->events:Ljava/util/ArrayList;

    .line 23
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;->events:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;->delta:Landroid/graphics/PointF;

    .line 26
    return-void
.end method


# virtual methods
.method public getDelta()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/interaction/gestures/PanGestureRecognizer;->delta:Landroid/graphics/PointF;

    return-object v0
.end method
