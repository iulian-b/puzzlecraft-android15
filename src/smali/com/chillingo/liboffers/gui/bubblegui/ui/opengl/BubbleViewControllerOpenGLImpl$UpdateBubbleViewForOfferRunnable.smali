.class Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;
.super Ljava/lang/Object;
.source "BubbleViewControllerOpenGLImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateBubbleViewForOfferRunnable"
.end annotation


# instance fields
.field private final initialisationData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final offer:Lcom/chillingo/liboffers/model/Offer;

.field private final target:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;


# direct methods
.method constructor <init>(Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;)V
    .locals 0
    .param p1, "offer"    # Lcom/chillingo/liboffers/model/Offer;
    .param p3, "target"    # Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chillingo/liboffers/model/Offer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "initialisationData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;->offer:Lcom/chillingo/liboffers/model/Offer;

    .line 66
    iput-object p2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;->initialisationData:Ljava/util/HashMap;

    .line 67
    iput-object p3, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;->target:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    .line 68
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;->target:Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;

    iget-object v1, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;->offer:Lcom/chillingo/liboffers/model/Offer;

    iget-object v2, p0, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl$UpdateBubbleViewForOfferRunnable;->initialisationData:Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;->access$000(Lcom/chillingo/liboffers/gui/bubblegui/ui/opengl/BubbleViewControllerOpenGLImpl;Lcom/chillingo/liboffers/model/Offer;Ljava/util/HashMap;)V

    .line 72
    return-void
.end method
