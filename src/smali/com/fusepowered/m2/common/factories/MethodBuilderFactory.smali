.class public Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;
.super Ljava/lang/Object;
.source "MethodBuilderFactory.java"


# static fields
.field protected static instance:Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;

    invoke-direct {v0}, Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;-><init>()V

    sput-object v0, Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;->instance:Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/String;)Lcom/fusepowered/m2/common/util/Reflection$MethodBuilder;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 14
    sget-object v0, Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;->instance:Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;

    invoke-virtual {v0, p0, p1}, Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;->internalCreate(Ljava/lang/Object;Ljava/lang/String;)Lcom/fusepowered/m2/common/util/Reflection$MethodBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static setInstance(Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 10
    sput-object p0, Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;->instance:Lcom/fusepowered/m2/common/factories/MethodBuilderFactory;

    .line 11
    return-void
.end method


# virtual methods
.method protected internalCreate(Ljava/lang/Object;Ljava/lang/String;)Lcom/fusepowered/m2/common/util/Reflection$MethodBuilder;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/fusepowered/m2/common/util/Reflection$MethodBuilder;

    invoke-direct {v0, p1, p2}, Lcom/fusepowered/m2/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
