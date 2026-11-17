.class final Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters;->newFactory(Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

.field final synthetic val$typeAdapter:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    iput-object p2, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/fusepowered/sa/android/publish/gson/Gson;",
            "Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$27;->val$type:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    invoke-virtual {p2, v0}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapters$27;->val$typeAdapter:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
