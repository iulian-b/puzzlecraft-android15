.class Lcom/fusepowered/m2/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Lcom/fusepowered/m2/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/volley/toolbox/ImageLoader;->makeImageRequest(Ljava/lang/String;IILjava/lang/String;)Lcom/fusepowered/m2/volley/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/volley/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$3;->this$0:Lcom/fusepowered/m2/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/fusepowered/m2/volley/VolleyError;)V
    .locals 2
    .param p1, "error"    # Lcom/fusepowered/m2/volley/VolleyError;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$3;->this$0:Lcom/fusepowered/m2/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/fusepowered/m2/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/fusepowered/m2/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/fusepowered/m2/volley/VolleyError;)V

    .line 237
    return-void
.end method
