.class Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$3;
.super Ljava/lang/Object;
.source "BubbleViewControllerOpenGLImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->offerReleased(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

.field final synthetic val$dict:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$3;->this$0:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    iput-object p2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$3;->val$dict:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$3;->this$0:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$3;->val$dict:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->access$300(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;Ljava/util/HashMap;)V

    .line 285
    return-void
.end method
