.class Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2;
.super Ljava/lang/Object;
.source "BubbleViewControllerOpenGLImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->cleanup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2;->this$0:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2;->this$0:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    invoke-virtual {v0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->doCleanupOnGLThread()V

    .line 227
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2;->this$0:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    new-instance v1, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2$1;

    invoke-direct {v1, p0}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2$1;-><init>(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$2;)V

    invoke-virtual {v0, v1}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->post(Ljava/lang/Runnable;)Z

    .line 235
    return-void
.end method
