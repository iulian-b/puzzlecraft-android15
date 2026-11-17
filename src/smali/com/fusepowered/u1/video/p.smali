.class final Lcom/fusepowered/u1/video/p;
.super Ljava/lang/Object;
.source "UnityAdsVideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/fusepowered/u1/video/l;


# direct methods
.method constructor <init>(Lcom/fusepowered/u1/video/l;)V
    .locals 0

    .prologue
    .line 666
    iput-object p1, p0, Lcom/fusepowered/u1/video/p;->a:Lcom/fusepowered/u1/video/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/fusepowered/u1/video/p;->a:Lcom/fusepowered/u1/video/l;

    iget-object v0, v0, Lcom/fusepowered/u1/video/l;->a:Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;

    invoke-static {v0}, Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;->v(Lcom/fusepowered/u1/video/UnityAdsVideoPlayView;)V

    .line 670
    return-void
.end method
