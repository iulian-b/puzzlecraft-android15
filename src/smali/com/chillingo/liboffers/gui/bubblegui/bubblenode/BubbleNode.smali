.class public interface abstract Lcom/chillingo/liboffers/gui/bubblegui/bubblenode/BubbleNode;
.super Ljava/lang/Object;
.source "BubbleNode.java"


# static fields
.field public static final BUBBLE_SPEED_LIMIT_MAX:F = 1000.0f


# virtual methods
.method public abstract activateOffer(Landroid/content/Intent;)V
.end method

.method public abstract closeOffer(Landroid/content/Intent;)V
.end method

.method public abstract iconScaleFactor()F
.end method

.method public abstract offerReleased(Landroid/content/Intent;)V
.end method

.method public abstract removeNode(Landroid/content/Intent;)V
.end method

.method public abstract setIconOffset(Landroid/graphics/PointF;)V
.end method

.method public abstract setIconScale(F)V
.end method

.method public abstract targetSpeed()F
.end method
