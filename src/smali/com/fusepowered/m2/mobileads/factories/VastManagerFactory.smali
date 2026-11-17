.class public Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;
.super Ljava/lang/Object;
.source "VastManagerFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/fusepowered/m2/mobileads/VastManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    sget-object v0, Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;

    invoke-virtual {v0, p0}, Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;->internalCreate(Landroid/content/Context;)Lcom/fusepowered/m2/mobileads/VastManager;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 20
    sput-object p0, Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;->instance:Lcom/fusepowered/m2/mobileads/factories/VastManagerFactory;

    .line 21
    return-void
.end method


# virtual methods
.method public internalCreate(Landroid/content/Context;)Lcom/fusepowered/m2/mobileads/VastManager;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    new-instance v0, Lcom/fusepowered/m2/mobileads/VastManager;

    invoke-direct {v0, p1}, Lcom/fusepowered/m2/mobileads/VastManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
