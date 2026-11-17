.class Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;
.super Ljava/lang/Object;
.source "AerServAdAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/ads/adapters/AerServAdAdapter;->onAerServEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/ads/adapters/AerServAdAdapter;

.field final synthetic val$event:Lcom/fusepowered/as/AerServEvent;

.field final synthetic val$list:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fusepowered/ads/adapters/AerServAdAdapter;Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AerServAdAdapter;

    iput-object p2, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;->val$event:Lcom/fusepowered/as/AerServEvent;

    iput-object p3, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;->val$list:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;->this$0:Lcom/fusepowered/ads/adapters/AerServAdAdapter;

    iget-object v1, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;->val$event:Lcom/fusepowered/as/AerServEvent;

    iget-object v2, p0, Lcom/fusepowered/ads/adapters/AerServAdAdapter$1;->val$list:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/fusepowered/ads/adapters/AerServAdAdapter;->access$000(Lcom/fusepowered/ads/adapters/AerServAdAdapter;Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V

    .line 156
    return-void
.end method
