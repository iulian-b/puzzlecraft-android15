.class Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/volley/toolbox/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchedImageRequest"
.end annotation


# instance fields
.field private final mContainers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mError:Lcom/fusepowered/m2/volley/VolleyError;

.field private final mRequest:Lcom/fusepowered/m2/volley/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;"
        }
    .end annotation
.end field

.field private mResponseBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/fusepowered/m2/volley/toolbox/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/volley/toolbox/ImageLoader;Lcom/fusepowered/m2/volley/Request;Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .param p3, "container"    # Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/volley/Request",
            "<*>;",
            "Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, "request":Lcom/fusepowered/m2/volley/Request;, "Lcom/fusepowered/m2/volley/Request<*>;"
    iput-object p1, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->this$0:Lcom/fusepowered/m2/volley/toolbox/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 377
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    .line 385
    iput-object p2, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/fusepowered/m2/volley/Request;

    .line 386
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mResponseBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public addContainer(Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;)V
    .locals 1
    .param p1, "container"    # Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 409
    return-void
.end method

.method public getError()Lcom/fusepowered/m2/volley/VolleyError;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/fusepowered/m2/volley/VolleyError;

    return-object v0
.end method

.method public removeContainerAndCancelIfNecessary(Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;)Z
    .locals 1
    .param p1, "container"    # Lcom/fusepowered/m2/volley/toolbox/ImageLoader$ImageContainer;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 419
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mContainers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mRequest:Lcom/fusepowered/m2/volley/Request;

    invoke-virtual {v0}, Lcom/fusepowered/m2/volley/Request;->cancel()V

    .line 421
    const/4 v0, 0x1

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setError(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 0
    .param p1, "error"    # Lcom/fusepowered/m2/volley/VolleyError;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$BatchedImageRequest;->mError:Lcom/fusepowered/m2/volley/VolleyError;

    .line 394
    return-void
.end method
