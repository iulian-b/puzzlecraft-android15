.class Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/fusepowered/sa/android/publish/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;ZZ)Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;

.field final typeAdapter:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fusepowered/sa/android/publish/gson/TypeAdapter",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic val$context:Lcom/fusepowered/sa/android/publish/gson/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z


# direct methods
.method constructor <init>(Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V
    .locals 2

    iput-object p1, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/fusepowered/sa/android/publish/gson/Gson;

    iput-object p6, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    iput-object p7, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/fusepowered/sa/android/publish/gson/Gson;

    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v0, v1}, Lcom/fusepowered/sa/android/publish/gson/Gson;->getAdapter(Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;)Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;->read(Lcom/fusepowered/sa/android/publish/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v2, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/fusepowered/sa/android/publish/gson/Gson;

    iget-object v3, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;

    iget-object v4, p0, Lcom/fusepowered/sa/android/publish/gson/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;

    invoke-virtual {v4}, Lcom/fusepowered/sa/android/publish/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/fusepowered/sa/android/publish/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/fusepowered/sa/android/publish/gson/Gson;Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    invoke-virtual {v1, p1, v0}, Lcom/fusepowered/sa/android/publish/gson/TypeAdapter;->write(Lcom/fusepowered/sa/android/publish/gson/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
