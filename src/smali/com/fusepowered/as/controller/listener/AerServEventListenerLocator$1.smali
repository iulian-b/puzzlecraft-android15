.class final Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator$1;
.super Ljava/lang/Object;
.source "AerServEventListenerLocator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator;->fireEvent(Ljava/lang/String;Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$args:Ljava/util/List;

.field final synthetic val$event:Lcom/fusepowered/as/AerServEvent;

.field final synthetic val$listener:Lcom/fusepowered/as/AerServEventListener;


# direct methods
.method constructor <init>(Lcom/fusepowered/as/AerServEventListener;Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator$1;->val$listener:Lcom/fusepowered/as/AerServEventListener;

    iput-object p2, p0, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator$1;->val$event:Lcom/fusepowered/as/AerServEvent;

    iput-object p3, p0, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator$1;->val$args:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator$1;->val$listener:Lcom/fusepowered/as/AerServEventListener;

    iget-object v1, p0, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator$1;->val$event:Lcom/fusepowered/as/AerServEvent;

    iget-object v2, p0, Lcom/fusepowered/as/controller/listener/AerServEventListenerLocator$1;->val$args:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/fusepowered/as/AerServEventListener;->onAerServEvent(Lcom/fusepowered/as/AerServEvent;Ljava/util/List;)V

    .line 40
    return-void
.end method
