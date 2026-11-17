.class Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$2;
.super Ljava/lang/Object;
.source "MoPubStreamAdPlacer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;-><init>(Landroid/content/Context;Lcom/fusepowered/m2/nativeads/NativeAdSource;Lcom/fusepowered/m2/nativeads/ImpressionTracker;Lcom/fusepowered/m2/nativeads/PositioningSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;


# direct methods
.method constructor <init>(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->access$000(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    invoke-static {v0}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->access$100(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;)V

    .line 164
    iget-object v0, p0, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer$2;->this$0:Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;->access$002(Lcom/fusepowered/m2/nativeads/MoPubStreamAdPlacer;Z)Z

    goto :goto_0
.end method
