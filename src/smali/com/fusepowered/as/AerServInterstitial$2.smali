.class Lcom/fusepowered/as/AerServInterstitial$2;
.super Ljava/lang/Object;
.source "AerServInterstitial.java"

# interfaces
.implements Lcom/fusepowered/as/controller/listener/ExecutePlacementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/as/AerServInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/as/AerServInterstitial;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/AerServInterstitial;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fusepowered/as/AerServInterstitial$2;->this$0:Lcom/fusepowered/as/AerServInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoViewCreated(Landroid/widget/VideoView;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fusepowered/as/AerServInterstitial$2;->this$0:Lcom/fusepowered/as/AerServInterstitial;

    invoke-static {v0, p1}, Lcom/fusepowered/as/AerServInterstitial;->access$102(Lcom/fusepowered/as/AerServInterstitial;Landroid/widget/VideoView;)Landroid/widget/VideoView;

    .line 32
    return-void
.end method
