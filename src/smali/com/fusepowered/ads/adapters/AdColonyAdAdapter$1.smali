.class Lcom/fusepowered/ads/adapters/AdColonyAdAdapter$1;
.super Ljava/lang/Object;
.source "AdColonyAdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->loadAd()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;

    iget-object v0, v0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;->listener:Lcom/fusepowered/ads/adapters/AdAdapterListener;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AdColonyAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AdColonyAdAdapter;

    invoke-interface {v0, v1}, Lcom/fusepowered/ads/adapters/AdAdapterListener;->onAdAvailable(Lcom/fusepowered/ads/adapters/AdAdapter;)V

    .line 120
    return-void
.end method
