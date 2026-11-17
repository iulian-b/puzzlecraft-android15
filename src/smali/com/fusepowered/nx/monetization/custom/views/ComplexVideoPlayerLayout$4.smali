.class Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$4;
.super Ljava/lang/Object;
.source "ComplexVideoPlayerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;


# direct methods
.method constructor <init>(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$4;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 784
    iget-object v0, p0, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout$4;->this$0:Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;

    const-wide/16 v2, 0xbb8

    invoke-static {v0, v2, v3}, Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;->access$2200(Lcom/fusepowered/nx/monetization/custom/views/ComplexVideoPlayerLayout;J)V

    .line 785
    return-void
.end method
